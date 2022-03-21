//Cola

import Foundation

var arr: [String] = ["Pedro","Maria",
"Luis","Francisco","Adriana"];

func Push(arr: inout [String], _ valor : String){
    arr.append(valor);
}
func Pop(arr: inout [String]){
    arr.removeFirst();
}

Push(arr: &arr,"Ignacio");
print("Agregar elemento -> ",arr);
Pop(arr: &arr)
print("Eliminación de elemento -> ", arr);