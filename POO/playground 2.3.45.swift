import Foundation

protocol Figura {
   func CalcularArea() -> Double
}
class Rectangulo: Figura
{
    internal var _largo:Double!
    internal var _ancho:Double!

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
class Circunferencia: Figura
{
    internal var _radio:Double!

    var Radio:Double{
        get {return _radio}
        set(nuevoRadio){
            _radio = nuevoRadio
        }
    }
    func CalcularArea() -> Double{
        return Double.pi * pow(Radio,2);
    }
}
class Triangulo: Figura
{
    internal var _altura:Double!
    internal var _ancho:Double!

    var Altura:Double{
        get {return _altura}
        set(nuevaAltura){
            _altura = nuevaAltura
        }
    }
    var Ancho:Double{
        get {return _ancho}
        set(nuevoAncho){
            _ancho = nuevoAncho
        }
    }
    func CalcularArea() -> Double{
        return (self.Ancho * self.Altura) / 2
    }
}


var rectangulo = Rectangulo();
rectangulo.Largo = 15;
rectangulo.Ancho = 4;
var circunferencia = Circunferencia();
circunferencia.Radio = 8;
var triangulo = Triangulo();
triangulo.Altura = 12
triangulo.Ancho = 10;

print("Área rectángulo ->", rectangulo.CalcularArea());
print("Área circunferencia ->", circunferencia.CalcularArea());
print("Área triángulo ->", triangulo.CalcularArea());