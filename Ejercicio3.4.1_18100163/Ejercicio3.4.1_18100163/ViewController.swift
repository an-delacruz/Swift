//
//  ViewController.swift
//  Ejercicio3.4.1_18100163
//
//  Created by user217478 on 3/20/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtAlto: UITextField!
    @IBOutlet weak var txtAncho: UITextField!
    @IBOutlet weak var txtY: UITextField!
    @IBOutlet weak var txtX: UITextField!
        
    @IBOutlet weak var btnCalcularPerimetro: UIButton!
    @IBOutlet weak var btnCalcularArea: UIButton!
    
    @IBOutlet weak var lblA: UILabel!
    
    @IBOutlet weak var lblResultado: UILabel!
    @IBOutlet weak var lblB: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func CalcularPerimetro(_ sender: Any) {
        let figura = FiguraL(0,0,0,0,0,0);

        figura.alto = Double(txtAlto.text!)
        figura.ancho = Double(txtAncho.text!)
        figura.x = Double(txtX.text!)
        figura.y = Double(txtY.text!)
        lblResultado.text = "Perimetro: \(figura.CalcularPerimetro())"
    }
    @IBAction func CalcularArea(_ sender: Any) {
        let figura = FiguraL(0,0,0,0,0,0);
        
        figura.alto = Double(txtAlto.text!)
        figura.ancho = Double(txtAncho.text!)
        figura.x = Double(txtX.text!)
        figura.y = Double(txtY.text!)
        lblResultado.text = "Area: \(figura.CalcularArea())"
    }
}
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
        let p1 = self.alto+self.x;
        let p2 = self.alto-self.y;
        let p3 = self.ancho-self.x;
        let p4 = self.y+self.ancho;
        /*let res = (self.alto+self.x+(self.alto-self.y)+(self.ancho-self.x)+self.y+self.ancho)*/
        let res = p1 + p2 + p3 + p4
        return (res)
    }
    func CalcularArea() -> Double{
        return (self.alto*self.x)+((self.ancho-self.x)*self.y)
    }
}
