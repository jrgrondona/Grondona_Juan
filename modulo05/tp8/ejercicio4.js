/*const fs = require('fs');
const rawdata = fs.readFileSync('./personas.json', 'utf8');
var persona = JSON.parse(rawdata);

for(var i=0;i<persona['personas'].length;i++){
console.log(persona['personas'][i]['nombre']+' ' + persona['personas'][i]['Apellido']);*/

const fs = require('fs');
const rawdata = fs.readFileSync('./personas.json', 'utf8');
var persona = JSON.parse(rawdata);


function getNombre (array) {
    for(var i=0;i<array['personas'].length;i++){
        let arreys = array['personas'][i]['Localidad'];
        if (array['personas'][i]['Localidad'] === 'Posadas'){
           console.log(array['personas'][i]['nombre'] + ' ' + array['personas'][i]['Apellido'] );
    }
  }
}
getNombre(persona);