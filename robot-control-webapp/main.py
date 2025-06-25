from fastapi import FastAPI, Request
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel
from zaber_tasks import pull_top_magnet

app = FastAPI()

# Allow frontend to call backend locally
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  # Replace * with "http://127.0.0.1:5500" if you want to be strict
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

class MoveRequest(BaseModel):
    axis: str
    distance: float

class TaskRequest(BaseModel):
    task: str

@app.post("/move")
async def move_axis(req: MoveRequest):
    print(f"Move {req.axis.upper()} by {req.distance} mm")
    # TODO: Send to robot via serial or other protocol
    return {"status": "moving", "axis": req.axis, "distance": req.distance}

@app.post("/jog")
async def jog_axis(req: MoveRequest):
    print(f"Jog {req.axis.upper()} by {req.distance} mm")
    return {"status": "jogging", "axis": req.axis, "distance": req.distance}

@app.post("/run-task")
async def run_task(req: TaskRequest):
    print(f"Running task: {req.task}")
    
    if req.task == "top_magnet":
        pull_top_magnet()
        return {"status": "completed", "task": req.task}
    
    return {"status": "unknown task", "task": req.task}

