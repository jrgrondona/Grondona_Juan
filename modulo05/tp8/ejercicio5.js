const fs = require('fs');
const rawdata = fs.readFileSync('./departamentos.json', 'utf8');
var departamento = JSON.parse(rawdata);

function getEmpleado(arreglo){
        for(var i = 0; i <arreglo['departamentos']['Tecnologia'].length; i++) {
             console.log(arreglo['departamentos']['Tecnologia'][i]['nombre'] + ' ' + 
                         arreglo['departamentos']['Tecnologia'][i]['puesto'] ) ;
        }
     }
getEmpleado(departamento);

