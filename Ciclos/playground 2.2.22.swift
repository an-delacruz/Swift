import Foundation

var x = 1
var i = 2
var esPrimo:Bool = true 
while (esPrimo == true && i < x) {
    if (x % i == 0){
        esPrimo = false
    }else{
        i = i + 1
    }
}
if (esPrimo && x != 1) {
    print("Es primo")
} else {
    print("No es primo")
}