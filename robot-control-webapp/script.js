function showTab(tabId) {
  const tabs = document.querySelectorAll('.tab-content');
  tabs.forEach(tab => tab.classList.remove('active'));
  document.getElementById(tabId).classList.add('active');
}

function moveAxis(axis) {
  const distance = document.getElementById(`${axis}Distance`).value;
  fetch("http://127.0.0.1:8000/move", {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ axis, distance: parseFloat(distance) })
  })
  .then(res => res.json())
  .then(data => {
    document.getElementById('status').innerText = `Move: ${data.axis} ${data.distance} mm`;
  });
}


function runSequence() {
  const file = document.getElementById('gcodeFile').files[0];
  if (file) {
    document.getElementById('status').innerText = 'Running sequence...';
    const reader = new FileReader();
    reader.onload = function(e) {
      console.log("G-code file contents:", e.target.result);
      // Parse and send to robot here
    };
    reader.readAsText(file);
  } else {
    alert("Please select a G-code file.");
  }
}

function jog(axis, direction) {
  const step = parseFloat(document.getElementById('jogStep').value) || 1;
  const distance = step * direction;

  fetch("http://127.0.0.1:8000/jog", {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ axis, distance })
  })
  .then(res => res.json())
  .then(data => {
    document.getElementById('status').innerText = `Jog: ${data.axis} ${data.distance} mm`;
  });
}


function runTask(taskName) {
  fetch("http://127.0.0.1:8000/run-task", {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ task: taskName })
  })
  .then(res => res.json())
  .then(data => {
    document.getElementById('status').innerText = `Running task: ${data.task}`;
  });
}