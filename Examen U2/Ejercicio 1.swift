import Foundation

class Venta
{
    private var miArreglo: [Double] = [0,0,0,0,0,0,0,0,0,0,0,0]
    subscript(intNumeroMes:Int) -> Double {
        get {return miArreglo[intNumeroMes]}
        set(nuevoValor) {
            self.miArreglo[intNumeroMes] = nuevoValor
        }
    }
    func CalcularPromedio() -> Double{
        var total:Double = 0;
        miArreglo.forEach{mes in 
         total = total + mes   
        }
        return Double(total/12)
    }
    func CalcularVentaMayor() -> Double{
        var mayor = miArreglo[0];
        miArreglo.forEach{mes in 
         if(mes > mayor){
             mayor = mes
         }
        }
        return mayor;
    }
}

var venta = Venta();
venta[0] = 2000;
venta[1] = 3100;
venta[2] = 5000.20;
venta[3] = 1500;
venta[4] = 2500;
venta[5] = 1890;
venta[6] = 1900.50;
venta[7] = 2050.50;
venta[8] = 8000.50;
venta[9] = 5000.20;
venta[10] = 2000;
venta[11] = 3000;

print("Promedio de ventas: ", String(venta.CalcularPromedio()));
print("Valor de la venta mayor: ", String(venta.CalcularVentaMayor()))