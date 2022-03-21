import Foundation
class Vehiculo
{
    var NumeroSerie: String
    var Marca: String
    var Anio: Int
    var Precio: Double
    init(_ NumeroSerie: String, _ Marca: String, _ Anio: Int, _ Precio: Double)
    {
        self.NumeroSerie = NumeroSerie
        self.Marca = Marca
        self.Anio = Anio
        self.Precio = Precio
    }
}
class AutoCompacto : Vehiculo{
    var Pasajeros : Int;
    init(_ NumeroSerie: String, _ Marca: String, _ Anio: Int, _ Precio: Double, _ Pasajeros:Int){
        self.Pasajeros = Pasajeros;
        super.init(NumeroSerie,Marca,Anio,Precio)
    }
}
class Vagoneta : Vehiculo{
    var Pasajeros : Int;
    init(_ NumeroSerie: String, _ Marca: String, _ Anio: Int, _ Precio: Double, _ Pasajeros:Int){
        self.Pasajeros = Pasajeros;
        super.init(NumeroSerie,Marca,Anio,Precio)
    }
}
class AutoLujo : Vehiculo{
    var Pasajeros : Int;
    init(_ NumeroSerie: String, _ Marca: String, _ Anio: Int, _ Precio: Double, _ Pasajeros:Int){
        self.Pasajeros = Pasajeros;
        super.init(NumeroSerie,Marca,Anio,Precio)
    }

}
class Camioneta : Vehiculo{
    var CargaKg : Double;
    var CantidadEjeRodadas : Int;
    init(_ NumeroSerie: String, _ Marca: String, _ Anio: Int, _ Precio: Double, _ CargaKg:Double, _ CantidadEjeRodadas: Int){
        self.CargaKg = CargaKg;
        self.CantidadEjeRodadas = CantidadEjeRodadas;
        super.init(NumeroSerie,Marca,Anio,Precio)
    }
}

var autoC = AutoCompacto("A8WS9A9W8","Ford",2010,200000,4);
print("Auto compacto ->",autoC.NumeroSerie,autoC.Marca,autoC.Anio,autoC.Precio,autoC.Pasajeros);
var autoL = AutoLujo("SKDIA3213A","Ferrari",2018,5000000,2);
print("Auto lujo ->",autoL.NumeroSerie,autoL.Marca,autoL.Anio,autoL.Precio,autoL.Pasajeros);
var vagoneta = Vagoneta("LSOW21O21","Chevrolet",2015,250000,7);
print("Vagoneta ->",vagoneta.NumeroSerie,vagoneta.Marca,vagoneta.Anio,vagoneta.Precio,vagoneta.Pasajeros);
var camioneta = Camioneta("9WOL245A","Chrysler",2020,300000,250,8);
print("Camioneta ->",camioneta.NumeroSerie,camioneta.Marca,camioneta.Anio,camioneta.Precio,camioneta.CargaKg,camioneta.CantidadEjeRodadas);
