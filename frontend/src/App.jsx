import { useState } from 'react';
import {
  runFullProcess,
  runLaserEtch,
  runScrewRemoval,
  emergencyStop,
  getStatus,
  moveToPosition,
  runMacro
} from './api';
import styles from './ControlPanel.module.css';

function App() {
  const [status, setStatus] = useState('');
  const [x, setX] = useState('');
  const [y, setY] = useState('');
  const [z, setZ] = useState('');
  const [log, setLog] = useState([]);

  const handle = async (fn, label) => {
    setStatus(`${label}...`);
    const timestamp = new Date().toLocaleTimeString();

    try {
      const res = await fn();
      const msg = res.data.status || `${label} complete`;
      setStatus(msg);
      setLog(prev => [`✅ ${timestamp} — ${label}`, ...prev]);
    } catch {
      setStatus(`Error during ${label}`);
      setLog(prev => [`❌ ${timestamp} — ${label}`, ...prev]);
    }
  };

  const macroButtons = [
    { label: "Laser Sticker 2-1", name: "laser-sticker-2-1" },
    { label: "Laser Sticker 2-2", name: "laser-sticker-2-2" },
    { label: "Laser Sticker 2-3", name: "laser-sticker-2-3" },
    { label: "Grab Driver", name: "grab-driver" },
    { label: "Pull Screw 2-1", name: "pull-screw-2-1" },
    { label: "Deposit Screw 2-1", name: "deposit-screw-2-1" },
    { label: "Put Away Driver", name: "put-away-driver" },
    { label: "Grab Jaws", name: "grab-jaws" },
    { label: "QC Jaws", name: "qc-jaws" },
    { label: "Grab Electromagnet", name: "grab-electromagnet" },
    { label: "Top Magnet Pull", name: "top-magnet-pull" },
    { label: "Run Conveyor", name: "run-conveyor" }
  ];

  return (
    <div className={styles.pageWrapper}>
      <div className={styles.container}>
        <div className={styles.header}>Zaber Robot Control Panel</div>

        <div className={styles.section}>
          <button className={styles.button} onClick={() => handle(runFullProcess, 'Full Process')}>
            🚀 Run Full Process
          </button>
        </div>

        <div className={styles.section}>
          <h3>Standard Actions</h3>
          <div className={styles.row}>
            <button className={styles.button} onClick={() => handle(runLaserEtch, 'Laser Etch')}>Laser Etch</button>
            <button className={styles.button} onClick={() => handle(runScrewRemoval, 'Screw Removal')}>Remove Screws</button>
            <button className={styles.button} onClick={() => handle(emergencyStop, 'Emergency Stop')}>🚩 Emergency Stop</button>
            <button className={styles.button} onClick={() => handle(getStatus, 'Check Status')}>Check Status</button>
          </div>
        </div>

        <div className={styles.section}>
          <h3>Move to Position</h3>
          <div className={styles.row}>
            <input className={styles.moveInput} placeholder="X" value={x} onChange={e => setX(e.target.value)} />
            <input className={styles.moveInput} placeholder="Y" value={y} onChange={e => setY(e.target.value)} />
            <input className={styles.moveInput} placeholder="Z" value={z} onChange={e => setZ(e.target.value)} />
            <button className={styles.button} onClick={() => handle(() => moveToPosition(x, y, z), 'Move')}>Move</button>
          </div>
        </div>

        <div className={styles.section}>
          <h3>Modular G-code Tasks</h3>
          <div className={styles.row}>
            {macroButtons.map(btn => (
              <button
                key={btn.name}
                className={styles.button}
                onClick={() => handle(() => runMacro(btn.name), btn.label)}
              >
                {btn.label}
              </button>
            ))}
          </div>
        </div>

        <div className={styles.status}>Status: {status}</div>
      </div>

      {/* Right Side Panel with side-by-side layout */}
      <div className={styles.rightPanelOuter}>
        <div className={styles.rightPanelRow}>
          <div className={styles.logPanel}>
            <h3>Activity Log</h3>
            <div className={styles.logBox}>
              {log.map((entry, i) => (
                <div key={i}>{entry}</div>
              ))}
            </div>
          </div>

          <div className={styles.cameraPanelGroup}>
            <div className={styles.cameraPanel}>
              <h3>Camera Feed 1</h3>
              <div className={styles.cameraBox}>
                <p style={{ color: '#666' }}>No feed connected</p>
              </div>
            </div>

            <div className={styles.cameraPanel}>
              <h3>Camera Feed 2</h3>
              <div className={styles.cameraBox}>
                <p style={{ color: '#666' }}>No feed connected</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}

export default App;
