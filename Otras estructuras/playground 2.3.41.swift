import Foundation

enum Opciones
{
    case piedra
    case papel
    case tijera
}
enum Resultado
{
    case gana
    case pierde
    case empate
}
func juego(_ jugador1: Opciones, _ jugador2: Opciones) -> Resultado{
    switch jugador1 {
    case Opciones.piedra:
        if(jugador2 == Opciones.piedra){
            return Resultado.empate;
        }else if(jugador2 == Opciones.papel){
            return Resultado.pierde;
        }else{
            return Resultado.gana;
        }
    case Opciones.papel:
        if(jugador2 == Opciones.piedra){
            return Resultado.gana;
        }else if(jugador2 == Opciones.papel){
            return Resultado.empate;
        }else{
            return Resultado.pierde
        }
    case Opciones.tijera:
        if(jugador2 == Opciones.piedra){
            return Resultado.pierde
        }else if(jugador2 == Opciones.papel){
            return Resultado.gana
        }else{
            return Resultado.empate;
        }
    }
}
print(juego(Opciones.tijera, Opciones.tijera));