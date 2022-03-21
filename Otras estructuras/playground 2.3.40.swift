import Foundation

var x = 5;
var y = 2;
enum Direcciones
{
    case arriba
    case abajo
    case derecha
    case izquierda
}
// var pasos = [Direcciones.arriba, Direcciones.arriba, 
// Direcciones.izquierda, Direcciones.abajo, Direcciones.izquierda,
// Direcciones.abajo, Direcciones.abajo, Direcciones.derecha,
// Direcciones.derecha, Direcciones.abajo, Direcciones.derecha];
var pasos = [Direcciones.arriba, Direcciones.derecha, Direcciones.arriba,
Direcciones.derecha, Direcciones.arriba, Direcciones.derecha,
Direcciones.abajo, Direcciones.derecha];
for direccion in pasos {
    switch direccion {
    case .arriba:
        y = y + 1;
    case .abajo:
        y = y - 1;
    case .derecha:
        x = x + 1;
    case .izquierda:
        x = x - 1;
    }
}

print(x,y);