from zaber_motion import Units
from zaber_motion.ascii import Connection
from zaber_motion.ascii import DigitalOutputAction
import time

def pause_play():
    input("Press Enter to continue...")

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

        pause_play()

##load electromagnet tool
        # Move to tool pickup position
        x_axis.move_absolute(240, Units.LENGTH_MILLIMETRES)
        y_axis.move_absolute(294, Units.LENGTH_MILLIMETRES)
        z_axis.move_absolute(30, Units.LENGTH_MILLIMETRES)
        x_axis.move_absolute(314, Units.LENGTH_MILLIMETRES)
        # pickup tool
        z_axis.move_relative(20, Units.LENGTH_MILLIMETRES)
        x_axis.move_relative(2, Units.LENGTH_MILLIMETRES)
        z_axis.move_relative(22.5, Units.LENGTH_MILLIMETRES)
        # Turn ON digital output 4
        device.io.set_digital_output(4, DigitalOutputAction.ON)
        state = device.io.get_digital_output(4)
        print(f"Output {4} state after ON: {state}")
        x_axis.move_relative(-50, Units.LENGTH_MILLIMETRES)

        pause_play()

##harvest top magnet
        # Rise up to start
        z_axis.move_absolute(0, Units.LENGTH_MILLIMETRES)
        # Move over top magnet
        x_axis.move_absolute(57, Units.LENGTH_MILLIMETRES)
        y_axis.move_absolute(227, Units.LENGTH_MILLIMETRES)
        # Move to magnet
        x_axis.move_absolute(53, Units.LENGTH_MILLIMETRES)
        y_axis.move_absolute(230, Units.LENGTH_MILLIMETRES)
        z_axis.move_absolute(60, Units.LENGTH_MILLIMETRES)
        # Turn ON digital output 2
        device.io.set_digital_output(2, DigitalOutputAction.ON)
        state = device.io.get_digital_output(2)
        print(f"Output {2} state after ON: {state}")
        # Turn ON digital output 3
        device.io.set_digital_output(3, DigitalOutputAction.ON)
        state = device.io.get_digital_output(3)
        print(f"Output {3} state after ON: {state}")
        z_axis.move_absolute(68, Units.LENGTH_MILLIMETRES)
        time.sleep(0.5) 
        z_axis.move_absolute(0, Units.LENGTH_MILLIMETRES)

        pause_play()
        

##DEPOSIT TOP MAGNET
        x_axis.move_absolute(100, Units.LENGTH_MILLIMETRES)
        y_axis.move_absolute(0, Units.LENGTH_MILLIMETRES)
        # Turn OFF digital output 2
        device.io.set_digital_output(2, DigitalOutputAction.OFF)
        state = device.io.get_digital_output(2)
        print(f"Output {2} state after ON: {state}")
        # Turn OFF digital output 3
        device.io.set_digital_output(3, DigitalOutputAction.OFF)
        state= device.io.get_digital_output(3)
        print(f"Output {3} state after ON: {state}")
        time.sleep(0.5) 

        pause_play()

## Run conveyor (simulate)
        print("Simulating conveyor run...")
        device.io.set_digital_output(1, DigitalOutputAction.ON)
        state = device.io.get_digital_output(1)
        print(f"Output {1} state after ON: {state}")
        time.sleep(2)
        # Turn OFF digital output 1
        device.io.set_digital_output(1, DigitalOutputAction.OFF)
        state = device.io.get_digital_output(1)
        print(f"Output {1} state after ON: {state}") 

        pause_play()


if __name__ == "__main__":
    pull_top_magnet()
