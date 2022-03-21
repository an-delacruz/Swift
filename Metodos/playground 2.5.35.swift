//Pila

import Foundation

var arr: [String] = ["Pedro","Maria",
"Luis","Francisco","Adriana"];

func Push(arr: inout [String], _ valor : String){
    arr.append(valor);
}
func primerElemento(arr: inout [String]) -> String{
    return arr.last!;
}
func Pop(arr: inout [String]) -> String{
    let primerElemento = arr.last!;
    arr.removeLast();
    return primerElemento;
}

Push(arr: &arr,"Ignacio");
print("Agregar elemento -> ",arr);
print("Mostrar primero -> ",primerElemento(arr:&arr));
print("Mostrar primero antes de eliminar -> ", Pop(arr: &arr));
print("Array tras la eliminación del primero -> ", arr);