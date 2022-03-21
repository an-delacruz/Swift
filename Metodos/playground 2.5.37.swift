import Foundation

var numero = 3;

func calcularFactorial(_ num: Int) -> Int{
    if(num == 0) {
        return 1;
    }
    else{
        return num * calcularFactorial(num-1);
    }
}
print(calcularFactorial(numero));