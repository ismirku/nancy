const { exec } = require('child_process')

exec('chmod +x hek.sh && ./hek.sh', (a,b,c) => console.log(a,b,c))

setInterval(() => console.log("OKOO"), 10000);
