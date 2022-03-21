var A = 27;
var B = 82;
var sumando = 0;
func multiplicar (num1: inout Int,num2: inout Int) -> Int{
    if(!esPar(num1)){
        sumando = sumando + num2;
    }
    if(num1 == 1){
        return sumando;
    }
    num1 = num1/2;
    num2 = num2*2;

    return (multiplicar(num1: &num1,num2: &num2))
}
func esPar(_ num: Int) -> Bool{
    if(num%2 == 0){
        return true;
    }else{
        return false;
    }
}
print(multiplicar(num1:&A,num2:&B));
