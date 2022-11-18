const fs = require('fs');

let rawdata = fs.readFileSync('./personas.json');
let persona = JSON.parse(rawdata);
console.log(persona);
//console.log(JSON.stringify(rawdata));


// ¿Qué sucede cuando utilizamos JSON.stringify? Por que?//
// convierte un objeto o valor de JavaScript en una cadena de texto json lo que hace más legible al ojo humano.
// ¿Qué sucede cuando utilizamos JSON.parse? Por que?//
// convierte un string JSON a un objeto javascript, para poder extraer datos accediendo a cada uno de ellos.