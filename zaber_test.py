from zaber_motion import Library
from zaber_motion.ascii import Connection
from zaber_motion.gcode import Translator

Library.enable_device_db_store()

HOSTNAME = "MOLG-mini"
PORT = 11421
SERIAL_PORT = "/dev/tty.usbmodem1295921"

with Connection.open_network_share(HOSTNAME, PORT, SERIAL_PORT) as connection:
    device_list = connection.detect_devices()
    print(f"Found {len(device_list)} devices")

    if device_list:
        device = device_list[0]

        # Set up a live stream for axes 1 and 2 (X and Y axes in lockstep)
        stream = device.streams.get_stream(1)  # Stream 1 is usually default
        stream.setup_live(1, 2)  # Enable streaming to axes 1 and 2

        # Set up the G-code translator on that stream
        translator = Translator.setup(stream)

        # G28: home all axes (X and Y in this case)
        translator.translate("G28")

        # Move to X=100
        translator.translate("G0 X100")

        # Move to Y=100 (X remains at 100)
        translator.translate("G0 Y100")

        # Move both back to origin
        translator.translate("G0 X0 Y0")

        # Send all commands
        translator.flush()

        # Disable stream after execution
        stream.disable()
