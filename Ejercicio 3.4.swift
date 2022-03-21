import Foundation
class FiguraL
{
    var alto:Double!
    var ancho:Double!
    var x:Double!
    var y:Double!
    var a:Double!
    var b:Double!

    init(_ Alto: Double, _ Ancho: Double, _ x: Double, _ y: Double, _ a: Double, _ b: Double)
    {
        self.alto = Alto;
        self.ancho = Ancho;
        self.x = x;
        self.y = y;
        self.a = a;
        self.b = b;
    }
    func CalcularPerimetro() -> Double {
        return self.alto+self.x+(self.alto-self.y)+(self.ancho-self.x)+self.y+self.ancho
    }
    func CalcularArea() -> Double{
        return (self.alto*self.x)+((self.ancho-self.x)*self.y)
    }
}