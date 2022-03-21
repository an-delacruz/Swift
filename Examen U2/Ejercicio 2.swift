import Foundation

class Persona 
{
    private var nombre : String?
    private var domicilio : String?
    private var horario : String?
    func asistir(){}
}

class Estudiante : Persona {
    private var grado : Int?
    private var grupo : Character?
    func estudiar(){}
}

class Empleado : Persona {
    private var jefe : String?
    func cobrar(){}
}

class Administrador : Empleado {
    private var puesto : String?
    func administrar(){}
}

class Profesor : Empleado {
    private var carrera : String?
    func enseñar(){}
}
