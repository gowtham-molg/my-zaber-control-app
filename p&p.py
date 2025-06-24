from zaber_motion import Units
from zaber_motion.ascii import Connection
import time

def step(description, action):
    input(f"\n[PAUSED] {description} — press Enter to continue...")
    action()

def pull_top_magnet():
    with Connection.open_serial_port("/dev/tty.usbmodem1295921") as connection:
        connection.enable_alerts()
        device = connection.detect_devices()[0]

        x_axis = device.get_lockstep(1)
        y_axis = device.get_axis(3)
        z_axis = device.get_axis(4)

        step("Homing X axis", lambda: x_axis.home())
        step("Homing Y axis", lambda: y_axis.home())
        step("Homing Z axis", lambda: z_axis.home())

        # Move to tool pickup position
        step("Move to X=240", lambda: x_axis.move_absolute(240, Units.LENGTH_MILLIMETRES))
        step("Move to Y=294", lambda: y_axis.move_absolute(294, Units.LENGTH_MILLIMETRES))
        step("Move to Z=30", lambda: z_axis.move_absolute(30, Units.LENGTH_MILLIMETRES))
        step("Move to X=314", lambda: x_axis.move_absolute(314, Units.LENGTH_MILLIMETRES))

        # Pickup sequence
        step("Advance X by 2 mm", lambda: x_axis.move_relative(2, Units.LENGTH_MILLIMETRES))
        step("Advance Z by 2.5 mm", lambda: z_axis.move_relative(2.5, Units.LENGTH_MILLIMETRES))
        step("Pull tool out by moving X -50", lambda: x_axis.move_relative(-50, Units.LENGTH_MILLIMETRES))

        step("Rise Z to 0", lambda: z_axis.move_absolute(0, Units.LENGTH_MILLIMETRES))
        step("Move to X=57", lambda: x_axis.move_absolute(57, Units.LENGTH_MILLIMETRES))
        step("Move to Y=227", lambda: y_axis.move_absolute(227, Units.LENGTH_MILLIMETRES))
        step("Move to X=53", lambda: x_axis.move_absolute(53, Units.LENGTH_MILLIMETRES))
        step("Move to Y=230", lambda: y_axis.move_absolute(230, Units.LENGTH_MILLIMETRES))
        step("Lower Z to 60", lambda: z_axis.move_absolute(60, Units.LENGTH_MILLIMETRES))
        step("Touch magnet (Z=68)", lambda: z_axis.move_absolute(68, Units.LENGTH_MILLIMETRES))
        
        step("Wait for attachment", lambda: time.sleep(0.5))
        step("Lift Z to 0", lambda: z_axis.move_absolute(0, Units.LENGTH_MILLIMETRES))
        step("Move to X=100", lambda: x_axis.move_absolute(100, Units.LENGTH_MILLIMETRES))
        step("Move to Y=0", lambda: y_axis.move_absolute(0, Units.LENGTH_MILLIMETRES))
        step("Wait for magnet release", lambda: time.sleep(0.5))
        step("Run conveyor (simulate)", lambda: time.sleep(2))
        step("Return to home Z=0", lambda: z_axis.move_absolute(0, Units.LENGTH_MILLIMETRES))
        step("Return to X=140", lambda: x_axis.move_absolute(140, Units.LENGTH_MILLIMETRES))
        step("Return to Y=244.5", lambda: y_axis.move_absolute(244.5, Units.LENGTH_MILLIMETRES))

if __name__ == "__main__":
    pull_top_magnet()
