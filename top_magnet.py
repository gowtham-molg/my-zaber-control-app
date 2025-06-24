from zaber_motion import Units
from zaber_motion.ascii import Connection
from zaber_motion.ascii import DigitalOutputAction
import time

def pull_top_magnet():
    with Connection.open_serial_port("/dev/tty.usbmodem1295921") as connection:
        connection.enable_alerts()
        device = connection.detect_devices()[0]
        device_io = device.io

        x_axis = device.get_lockstep(1)  # Axes 1+2: X
        y_axis = device.get_axis(3)      # Axis 3: Y
        z_axis = device.get_axis(4)      # Axis 4: Z

        x_axis.home()
        y_axis.home()
        z_axis.home()

        #device.generic_command("M64 P4")  # Engage tool lock

        # Rise up to start
        z_axis.move_absolute(0, Units.LENGTH_MILLIMETRES)

        # Move over top magnet
        x_axis.move_absolute(57, Units.LENGTH_MILLIMETRES)
        y_axis.move_absolute(227, Units.LENGTH_MILLIMETRES)

        # Move to magnet
        x_axis.move_absolute(53, Units.LENGTH_MILLIMETRES)
        y_axis.move_absolute(230, Units.LENGTH_MILLIMETRES)
        z_axis.move_absolute(60, Units.LENGTH_MILLIMETRES)

        # # Power electromagnet and distend
        # connection.generic_command_no_response(command, device = 0, axis = 0)
        device.generic_command_no_response("M64 P2")  # Power electromagnet
        # device.generic_command("M64 P3")  # Distend
        z_axis.move_absolute(68, Units.LENGTH_MILLIMETRES)  # Touch magnet
        time.sleep(0.5)  # Wait for attachment

        # Lift
        z_axis.move_absolute(0, Units.LENGTH_MILLIMETRES)

        # Deposit magnet
        x_axis.move_absolute(100, Units.LENGTH_MILLIMETRES)
        y_axis.move_absolute(0, Units.LENGTH_MILLIMETRES)
        # device.generic_command("M65 P2")  # Power down electromagnet
        # device.generic_command("M65 P3")  # Retract
        time.sleep(0.5)  # Wait for release

        # Run conveyor
        #device.generic_command("M64 P1")
        time.sleep(2)
        #device.generic_command("M65 P1")

        # End
        z_axis.move_absolute(0, Units.LENGTH_MILLIMETRES)
        x_axis.move_absolute(140, Units.LENGTH_MILLIMETRES)
        y_axis.move_absolute(244.5, Units.LENGTH_MILLIMETRES)
        #device.generic_command("M65 P4")  # Disengage tool lock




if __name__ == "__main__":
    pull_top_magnet()
