'use strict';
const fs = require('fs');
fs.readFile('personas.json', (err, data) => {
//if (err) throw err;
console.log(JSON.stringify(data));
console.log(JSON.parse(data));
});


