from zaber_motion.gcode import Translator
from zaber_motion.ascii import Connection
from zaber_motion.ascii import DigitalOutputAction

# Open serial connection
with Connection.open_serial_port("/dev/tty.usbmodem1295921") as connection:
    connection.enable_alerts()
    device = connection.detect_devices()[0]
    device_io = device.io

    # Turn ON digital output 2
    device.io.set_digital_output(2, DigitalOutputAction.ON)
    state_on = device.io.get_digital_output(2)
    print(f"Output {2} state after ON: {state_on}")

    # Turn OFF digital output 2
    device.io.set_digital_output(2, DigitalOutputAction.OFF)
    state_off = device.io.get_digital_output(2)
    print(f"Output {2} state after OFF: {state_off}")
