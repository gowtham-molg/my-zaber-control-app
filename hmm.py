from zaber_motion import Units
from zaber_motion.ascii import Connection
from zaber_motion.ascii import DigitalOutputAction
import time
import asyncio

from zaber_motion import Units

async def move_xyz_async(x_axis, y_axis, z_axis, x_mm, y_mm, z_mm):
    task_x = await x_axis.move_absolute_async(x_mm, Units.LENGTH_MILLIMETRES)
    task_y = await y_axis.move_absolute_async(y_mm, Units.LENGTH_MILLIMETRES)
    task_z = await z_axis.move_absolute_async(z_mm, Units.LENGTH_MILLIMETRES)

    await task_x.await_completion()
    await task_y.await_completion()
    await task_z.await_completion()



async def move_zaber_gantry_robot():
    with Connection.open_serial_port("/dev/tty.usbmodem1295921") as connection:
        connection.enable_alerts()
        device = connection.detect_devices()[0]

        x_axis = device.get_lockstep(1)
        y_axis = device.get_axis(3)
        z_axis = device.get_axis(4)

        await x_axis.move_absolute_async(0, Units.LENGTH_MILLIMETRES)
        await y_axis.move_absolute_async(0, Units.LENGTH_MILLIMETRES)
        await z_axis.move_absolute_async(0, Units.LENGTH_MILLIMETRES)

if __name__ == "__main__":
    asyncio.run(move_zaber_gantry_robot())


