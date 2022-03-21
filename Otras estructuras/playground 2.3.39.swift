import Foundation

func numMayorMenor(_ a: Int, _ b: Int, _ c: Int) -> (mayor: Int, menor:Int){
    var mayor = 0;
    var menor = 0;
    mayor = max(a,b,c);
    menor = min(a,b,c);
    return (mayor,menor);
}

print(numMayorMenor(6,3,6))