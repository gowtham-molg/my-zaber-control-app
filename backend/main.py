import subprocess
from fastapi import FastAPI
from pydantic import BaseModel
from fastapi.middleware.cors import CORSMiddleware
import os

app = FastAPI()

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

MACRO_DIR = os.path.join(os.path.dirname(__file__), "macros")

def run_gcode_file(filename):
    path = os.path.join(MACRO_DIR, filename)
    print(f"Running G-code file: {path}")  # <-- Debug print
    try:
        result = subprocess.run(
            ["/Applications/ZaberLauncher.app/Contents/MacOS/ZaberLauncher", "--run", path],
            capture_output=True,
            text=True
        )
        print("Zaber Output:", result.stdout)     # <-- Output log
        print("Zaber Error:", result.stderr)       # <-- Error log
        return {"status": "Done", "output": result.stdout}
    except Exception as e:
        print("Zaber Launcher failed:", e)
        return {"status": "Failed", "error": str(e)}

@app.post("/run/full-process")
def run_full_process():
    return run_gcode_file("full_process_v1.gcode")

@app.post("/run/{macro_name}")
def run_macro(macro_name: str):
    filename = f"{macro_name}.gcode"
    return run_gcode_file(filename)

class MoveRequest(BaseModel):
    x: float
    y: float
    z: float

@app.post("/move")
def move_to_position(req: MoveRequest):
    gcode = f"G90\nG01 X{req.x} Y{req.y} Z{req.z} F10000"
    try:
        result = subprocess.run(
            ["/Applications/ZaberLauncher.app/Contents/MacOS/ZaberLauncher", "--gcode", gcode],
            capture_output=True,
            text=True
        )
        return {"status": f"Moved to X:{req.x} Y:{req.y} Z:{req.z}", "output": result.stdout}
    except Exception as e:
        return {"status": "Failed", "error": str(e)}
