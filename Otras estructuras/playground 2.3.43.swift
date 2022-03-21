import Foundation

var f1 = (1,5);
var f2 = (1,6);

func sumaFracciones(_ f1: (numerador:Int, denominador:Int), _ f2: (numerador:Int, denominador:Int)) -> (numerador: Int, denominador: Int){
    var res = (numerador:0,denominador:0);
    res.numerador = (f1.numerador * f2.denominador) + (f1.denominador * f2.numerador);
    res.denominador = f1.denominador * f2.denominador;
	let divisor = gcd(res.numerador, res.denominador)
    return (numerador: res.numerador / divisor, denominador: res.denominador / divisor)
}
func gcd(_ a: Int,_ b: Int) -> Int
{
    if (b == 0){
        return a;
    }
    return gcd(b, a % b);   
}
print(sumaFracciones(f1,f2));