import Foundation

var arr: [String] = ["Pedro","Maria",
"Luis","Francisco","Adriana"];

func agregarElemento(arr: inout [String], _ valor : String){
    arr.insert(valor, at:0);
}
func primerElemento(arr: inout [String]) -> String{
    return arr.first!;
}
func popPrimero(arr: inout [String]) -> String{
    let primerElemento = arr.first!;
    arr.removeFirst();
    return primerElemento;
}

agregarElemento(arr: &arr,"Ignacio");
print("Agregar elemento -> ",arr);
print("Mostrar primero -> ",primerElemento(arr:&arr));
print("Mostrar primero antes de eliminar -> ", popPrimero(arr: &arr));
print("Array tras la eliminación del primero -> ", arr);