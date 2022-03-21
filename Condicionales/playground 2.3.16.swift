import Foundation

var x:Character = "%";

let vocales = CharacterSet(charactersIn: "aeiouAEIOU")
let consonantes = CharacterSet(charactersIn: "bcdfghjklmnopqrstvwxyzBCDFGHJKLMNOPQRSTVWXYZ")
let opAritmeticos = CharacterSet(charactersIn: "+-/=*")
let digitos = CharacterSet(charactersIn: "123456789")
let scalar = x.unicodeScalars.first!
   
if vocales.contains(scalar){
    print("Es vocal")
}else if consonantes.contains(scalar){
    print("Es consonante")
}else if digitos.contains(scalar){
    print("Es digito")
}else if opAritmeticos.contains(scalar){
    print("Es operador aritmetico")
}else{
    print("Otro")
}
