from zaber_motion import Library
from zaber_motion.ascii import Connection
import re

# Enable Zaber model database
Library.enable_device_db_store()

# Network-shared connection details
HOSTNAME = "MOLG-mini"
PORT = 11421
SERIAL_PORT = "/dev/tty.usbmodem1295921"

# Open the network share
with Connection.open_network_share(HOSTNAME, PORT, SERIAL_PORT) as connection:
    device_list = connection.detect_devices()
    print(f"Found {len(device_list)} devices")

    if not device_list:
        print("❌ No Zaber devices found.")
        exit()

    device = device_list[0]

    # G-code-style input
    gcode_command = "G01 X41.1 Y242 Z75"

    # Parse: extract X, Y, Z values
    matches = re.findall(r'([XYZ])([-+]?[0-9]*\.?[0-9]+)', gcode_command)
    coord_map = {k: float(v) for k, v in matches}

    # Map G-code letters to Zaber axis numbers
    gcode_to_axis = {'X': 1, 'Y': 3, 'Z': 4}
    target_positions = {gcode_to_axis[k]: v for k, v in coord_map.items()}

    # Lockstep axis order — must match real group order
    lockstep_axis_order = [1, 3, 4]

    axes = []
    move_positions = []

    print("\nSending lockstep-safe move:")
    for axis_num in lockstep_axis_order:
        try:
            axis = device.get_axis(axis_num)
            axes.append(axis)
            if axis_num in target_positions:
                pos = target_positions[axis_num]
                print(f"  Axis {axis_num} → {pos} mm")
            else:
                pos = axis.get_position()
                print(f"  Axis {axis_num} → HOLD at {pos:.2f} mm")
            move_positions.append(pos)
        except Exception as e:
            print(f"❌ Failed to access axis {axis_num}: {e}")
            exit()

    # Send move
    device.generic_move_absolute(move_positions)

    # Wait for motion to finish
    for axis in axes:
        axis.wait_until_idle()

    print("✅ Move complete.\n")

    # Print final positions
    print("Final positions:")
    for axis in axes:
        pos = axis.get_position()
        print(f"  Axis {axis.axis_number}: {pos:.2f} mm")
