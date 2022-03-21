import Foundation

var diccionario = [["apellido": "Perea",
"nombre": "Alicia"],
["apellido": "Flores",
"nombre": "Norma"],
["apellido": "Noriega",
"nombre": "Roberto"]];

var arrNombresCompletos : [String] = [];
for item in diccionario {
    arrNombresCompletos.append(item["nombre"]! + " " + item["apellido"]!)
}
print(arrNombresCompletos)