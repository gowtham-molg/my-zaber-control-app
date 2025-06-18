import axios from 'axios';

const BASE_URL = 'http://localhost:8000'; // Or LAN IP when hosting

export const runMacro = (name) => axios.post(`http://localhost:8000/run/${name}`);
export const runFullProcess = () => axios.post("http://localhost:8000/run/full-process");
export const runLaserEtch = () => axios.post(`${BASE_URL}/run/laser-etch`);
export const runScrewRemoval = () => axios.post(`${BASE_URL}/run/screw-removal`);
export const emergencyStop = () => axios.post(`${BASE_URL}/stop`);
export const getStatus = () => axios.get(`${BASE_URL}/status`);
export const moveToPosition = (x, y, z) =>
  axios.post(`${BASE_URL}/move`, { x, y, z });

