import Foundation

class Rectangulo
{
    private var _largo:Double!
    private var _ancho:Double!

    var Largo:Double{
        get {return _largo}
        set(nuevoLargo){
            _largo = nuevoLargo
        }
    }
    var Ancho:Double{
        get {return _ancho}
        set(nuevoAncho){
            _ancho = nuevoAncho
        }
    }
    func CalcularArea() -> Double{
        return self.Ancho * self.Largo;
    }
}

var Pared = Rectangulo();
Pared.Ancho = 3;
Pared.Largo = 3;
var Ventana = Rectangulo();
Ventana.Ancho = 1;
Ventana.Largo = 1;
var resultado = (Pared.CalcularArea() - Ventana.CalcularArea()) * 10
print("Resultado ->",resultado);