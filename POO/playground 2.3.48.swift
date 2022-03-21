import Foundation

protocol Vehiculo
{
    var NumeroPlacas: String {get set}
    func CalcularImporte() -> Double
    func MostrarDatos() -> String
}

class Autobus : Vehiculo {
    var NumeroPlacas: String = "";
    var PrecioPorKm: Double!
    var CantidadKmRenta: Double!
    var CantidadKmDevolucion: Double!

    func CalcularImporte() -> Double {
        return (CantidadKmDevolucion - CantidadKmRenta) * PrecioPorKm
    }
    func MostrarDatos() -> String{
        return ("Precio por KM: " + String(PrecioPorKm) + " Cantidad KM renta: " + String(CantidadKmRenta) +
        " Cantidad KM devolución: " + String(CantidadKmDevolucion))
    }
}
class Tractor : Vehiculo {
    var NumeroPlacas: String = "";
    var PrecioPorDia: Double! 
    var DiaMesRenta: Double! 
    var DiaMesDevolucion: Double! 

    func CalcularImporte() -> Double {
        return (DiaMesDevolucion - DiaMesRenta) * PrecioPorDia
    }
    func MostrarDatos() -> String{
        return ("Precio por dia: " + String(PrecioPorDia) + " Dia y mes de renta: " + String(DiaMesRenta) +
        " Dia y mes de devolución: " + String(DiaMesDevolucion))
    }
}

print("Renta autobús")
var autobus = Autobus();
autobus.NumeroPlacas = "ASLO9123-9AKZ";
autobus.PrecioPorKm = 10.5
autobus.CantidadKmRenta = 200
autobus.CantidadKmDevolucion = 234
print(autobus.MostrarDatos())

print("Renta tractor")
var tractor = Tractor();
tractor.NumeroPlacas = "AIWUQ122-009L";
tractor.PrecioPorDia = 250
tractor.DiaMesRenta = 15
tractor.DiaMesDevolucion = 25
print(tractor.MostrarDatos())

print("Devolución autobús")
print("Importe: ", String(autobus.CalcularImporte()))

print("Devolución tractor")
print("Importe: ", String(tractor.CalcularImporte()))
