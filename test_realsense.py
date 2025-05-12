import pyrealsense2 as rs
try:
    ctx = rs.context()
    devices = ctx.query_devices()
    print("devices number", len(devices))
    if len(devices) == 0:
        print("No RealSense devices found.")
    else:
        print("Found RealSense devices:")
        for dev in devices:
            print(f"  Name: {dev.get_info(rs.camera_info.name)}")
            print(f"  Serial Number: {dev.get_info(rs.camera_info.serial_number)}")
            # Check if it supports the option before trying to set it
            try:
                depth_sensor = dev.first_depth_sensor()
                if depth_sensor and depth_sensor.supports(rs.option.emitter_enabled):
                        print(f"  Emitter status: {depth_sensor.get_option(rs.option.emitter_enabled)}")
                else:
                        print("  Emitter option not supported or no depth sensor.")
            except RuntimeError as e:
                print(f"  Could not query emitter status: {e}")

except Exception as e:
    print(f"An error occurred: {e}")
