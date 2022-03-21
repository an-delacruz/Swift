import Foundation

class  Empleado {
    private var _horasTrabajadas:Int!
    private var _sueldoPorHora:Double!

    var HorasTrabajadas:Int{
        get {return _horasTrabajadas}
        set(nuevaHorasTrabajadas){
            _horasTrabajadas = nuevaHorasTrabajadas
        }
    }
    var SueldoPorHora:Double{
        get {return _sueldoPorHora}
        set(nuevoSueldoPorHora){
            _sueldoPorHora = nuevoSueldoPorHora
        }
    }
    func CalcularSalario() -> Double {
        return Double(HorasTrabajadas) * SueldoPorHora
    } 
}
class EmpleadoSinHorasExtras:Empleado{
    override func CalcularSalario() -> Double {
        return super.CalcularSalario();
    } 
}
class EmpleadoConHorasDobles:Empleado{

    private var _horasExtras:Int!

    var HorasExtras:Int{
        get {return _horasExtras}
        set(nuevaHorasExtras){
            _horasExtras = nuevaHorasExtras
        }
    }
    override func CalcularSalario() -> Double {
        return Double(HorasTrabajadas - HorasExtras) * SueldoPorHora + (Double(HorasExtras) * (SueldoPorHora * 2))
    }
}
class EmpleadoConHorasTriples:Empleado{
        private var _horasExtras:Int!

    var HorasExtras:Int{
        get {return _horasExtras}
        set(nuevaHorasExtras){
            _horasExtras = nuevaHorasExtras
        }
    }
        override func CalcularSalario() -> Double {
        return Double(HorasTrabajadas - HorasExtras) * SueldoPorHora + (Double(HorasExtras) * (SueldoPorHora * 3))
    }
}
var horasTrabajadas = 46;
var salarioHora:Double = 2;
var horasExtra = 6;
var salarioSemanal:Double = 0;

if horasTrabajadas <= 40 {
    let Empleado = EmpleadoSinHorasExtras();
    Empleado.HorasTrabajadas = horasTrabajadas;
    Empleado.SueldoPorHora = salarioHora;
    salarioSemanal = Empleado.CalcularSalario();

}else if horasTrabajadas >= 41 && horasTrabajadas <= 45 {
    let Empleado = EmpleadoConHorasDobles();
    Empleado.HorasTrabajadas = horasTrabajadas;
    Empleado.SueldoPorHora = salarioHora;
    Empleado.HorasExtras = horasExtra;
    salarioSemanal = Empleado.CalcularSalario();

}else if horasTrabajadas > 45{
    let Empleado = EmpleadoConHorasTriples();
    Empleado.HorasTrabajadas = horasTrabajadas;
    Empleado.SueldoPorHora = salarioHora;
    Empleado.HorasExtras = horasExtra;
    salarioSemanal = Empleado.CalcularSalario();

}
print("Salario semanal",salarioSemanal);