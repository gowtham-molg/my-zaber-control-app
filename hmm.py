from zaber_motion.gcode import Translator
from zaber_motion.ascii import Connection

# Open serial connection
with Connection.open_serial_port("/dev/tty.usbmodem1295921") as connection:
    connection.enable_alerts()
    device = connection.detect_devices()[0]

    # Set up live stream with axes 3
    stream = device.streams.get_stream(1)
    stream.setup_live(3)

    # Initialize G-code translators
    translator = Translator.setup(stream)

    # Send G-code commands
    translator.translate("G0 Y100")      # Move Y to 100

    # Flush and disable stream
    translator.flush()
    stream.disable()
