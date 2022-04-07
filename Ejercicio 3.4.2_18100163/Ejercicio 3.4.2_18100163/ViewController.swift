//
//  ViewController.swift
//  Ejercicio 3.4.2_18100163
//
//  Created by user217478 on 4/6/22.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var pkvFigura: UIPickerView!
    
    @IBOutlet weak var lblDatosEntrada: UILabel!
    @IBOutlet weak var lblResultado: UILabel!
    let figuras = [
        "Circulo",
        "Triangulo",
        "Cuadrado",
        "Rectangulo",
        "Pentagono"
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pkvFigura.delegate = self
        pkvFigura.dataSource = self
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return figuras.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return figuras[row]
    }
    @IBAction func calcularPerimetro(_ sender: UIBarButtonItem) {
        
        let figuraSeleccionada =  "\(figuras[pkvFigura.selectedRow(inComponent: 0)])"
        let alerta = UIAlertController(title: "Perimetro", message: "Ingrese los datos", preferredStyle: .alert)
        
        switch figuraSeleccionada{
        case "Circulo":
            alerta.addTextField{
                (txtRadio) in txtRadio.placeholder = "Radio"
            }
        case "Triangulo":
            alerta.addTextField{
                (txtLadoA) in txtLadoA.placeholder = "Lado A"
            }
            alerta.addTextField{
                (txtLadoB) in
                txtLadoB.placeholder = "Lado B"
            }
            alerta.addTextField{
                (txtBase) in txtBase.placeholder = "Base"
            }
        case "Cuadrado":
            alerta.addTextField{
                (txtLado) in txtLado.placeholder = "Lado"
            }
        case "Rectangulo":
            alerta.addTextField{
                (txtBase) in
                txtBase.placeholder = "Base"
            }
            alerta.addTextField{
                (txtAltura) in txtAltura.placeholder = "Altura"
            }
        case "Pentagono":
            alerta.addTextField{
                (txtLado) in txtLado.placeholder = "Lado"
            }
        default:
            self.lblResultado.text = "Figura invalida"
        }
        let btnCancelar = UIAlertAction(title: "Cancelar", style: .cancel)
        let btnCalcular = UIAlertAction(title: "Calcular", style: .default, handler: {
            _ in
            switch figuraSeleccionada{
            case "Circulo":
                let radio = Double (alerta.textFields![0].text!)
                let circulo = Circulo(radioPerimetro: radio!)
                self.lblDatosEntrada.text = "Radio: \(circulo.radio!)"
                self.lblResultado.text = "Perimetro \(circulo.calcularPerimetro())"
            case "Triangulo":
                let ladoA = Double (alerta.textFields![0].text!)
                let ladoB = Double(alerta.textFields![1].text!)
                let base = Double(alerta.textFields![2].text!)
                let triangulo = Triangulo(ladoA: ladoA!, ladoB: ladoB!, base: base!)
                self.lblDatosEntrada.text = "Lado A: \(triangulo.ladoA!), Lado B: \(triangulo.ladoB!), Base: \(triangulo.base!)"
                self.lblResultado.text = "Perimetro \(triangulo.calcularPerimetro())"
            case "Cuadrado":
                let lado = Double (alerta.textFields![0].text!)
                let cuadrado = Cuadrado(ladoPerimetro: lado!)
                self.lblDatosEntrada.text = "Lado: \(cuadrado.lado!)"
                self.lblResultado.text = "Perimetro \(cuadrado.calcularPerimetro())"
            case "Rectangulo":
                let base = Double (alerta.textFields![0].text!)
                let altura = Double(alerta.textFields![1].text!)
                let rectangulo = Rectangulo(basePerimetro: base!, alturaPerimetro: altura!)
                self.lblDatosEntrada.text = "Base: \(rectangulo.base!), Altura: \(rectangulo.altura!)"
                self.lblResultado.text = "Perimetro \(rectangulo.calcularPerimetro())"
            case "Pentagono":
                let lado = Double (alerta.textFields![0].text!)
                let pentagono = Pentagono(ladoPerimetro: lado!)
                self.lblDatosEntrada.text = "Lado: \(pentagono.lado!)"
                self.lblResultado.text = "Perimetro \(pentagono.calcularPerimetro())"
            default:
                self.lblResultado.text = "Error al calcular el perimetro"
            }
        })
        alerta.addAction(btnCancelar)
        alerta.addAction(btnCalcular)
        self.present(alerta, animated: true, completion: nil)
    }
    @IBAction func calcularArea(_ sender: UIBarButtonItem) {
        let figuraSeleccionada =  "\(figuras[pkvFigura.selectedRow(inComponent: 0)])"
        let alerta = UIAlertController(title: "Area", message: "Ingrese los datos", preferredStyle: .alert)
        
        switch figuraSeleccionada{
        case "Circulo":
            alerta.addTextField{
                (txtRadio) in txtRadio.placeholder = "Radio"
            }
        case "Triangulo":
            alerta.addTextField{
                (txtAltura) in txtAltura.placeholder = "Altura"
            }
            alerta.addTextField{
                (txtBase) in txtBase.placeholder = "Base"
            }
        case "Cuadrado":
            alerta.addTextField{
                (txtLado) in txtLado.placeholder = "Lado"
            }
        case "Rectangulo":
            alerta.addTextField{
                (txtBase) in
                txtBase.placeholder = "Base"
            }
            alerta.addTextField{
                (txtAltura) in txtAltura.placeholder = "Altura"
            }
        case "Pentagono":
            alerta.addTextField{
                (txtLado) in txtLado.placeholder = "Lado"
            }
            alerta.addTextField{
                (txtApotema) in txtApotema.placeholder = "Apotema"
            }
        default:
            self.lblResultado.text = "Figura invalida"
        }
        let btnCancelar = UIAlertAction(title: "Cancelar", style: .cancel)
        let btnCalcular = UIAlertAction(title: "Calcular", style: .default, handler: {
            _ in
            switch figuraSeleccionada{
            case "Circulo":
                let radio = Double (alerta.textFields![0].text!)
                let circulo = Circulo(radioArea: radio!)
                self.lblDatosEntrada.text = "Radio: \(circulo.radio!)"
                self.lblResultado.text = "Area \(circulo.calcularArea())"
            case "Triangulo":
                let altura = Double (alerta.textFields![0].text!)
                let base = Double(alerta.textFields![1].text!)
                let triangulo = Triangulo(base: base!, altura: altura!)
                self.lblDatosEntrada.text = "Altura: \(triangulo.altura!), Base: \(triangulo.base!)"
                self.lblResultado.text = "Area \(triangulo.calcularArea())"
            case "Cuadrado":
                let lado = Double (alerta.textFields![0].text!)
                let cuadrado = Cuadrado(ladoArea: lado!)
                self.lblDatosEntrada.text = "Lado: \(cuadrado.lado!)"
                self.lblResultado.text = "Area \(cuadrado.calcularArea())"
            case "Rectangulo":
                let base = Double (alerta.textFields![0].text!)
                let altura = Double(alerta.textFields![1].text!)
                let rectangulo = Rectangulo(baseArea: base!, alturaArea: altura!)
                self.lblDatosEntrada.text = "Base: \(rectangulo.base!), Altura: \(rectangulo.altura!)"
                self.lblResultado.text = "Area \(rectangulo.calcularArea())"
            case "Pentagono":
                let lado = Double (alerta.textFields![0].text!)
                let apotema = Double(alerta.textFields![1].text!)
                let pentagono = Pentagono(ladoArea: lado!, apotemaArea: apotema!)
                self.lblDatosEntrada.text = "Lado: \(pentagono.lado!), Apotema: \(pentagono.apotema!)"
                self.lblResultado.text = "Area \(pentagono.calcularArea())"
            default:
                self.lblResultado.text = "Error al calcular el area"
            }
        })
        alerta.addAction(btnCancelar)
        alerta.addAction(btnCalcular)
        self.present(alerta, animated: true, completion: nil)
    }
    @IBAction func calcularVolumen(_ sender: UIBarButtonItem) {
        let figuraSeleccionada =  "\(figuras[pkvFigura.selectedRow(inComponent: 0)])"
        let alerta = UIAlertController(title: "Volumen", message: "Ingrese los datos", preferredStyle: .alert)
        
        switch figuraSeleccionada{
        case "Circulo":
            alerta.addTextField{
                (txtRadio) in txtRadio.placeholder = "Radio"
            }
            alerta.addTextField{
                (txtAltura) in txtAltura.placeholder = "Altura Prisma"
            }
        case "Triangulo":
            alerta.addTextField{
                (txtAltura) in txtAltura.placeholder = "Altura triangulo"
            }
            alerta.addTextField{
                (txtAlturaPrisma) in txtAlturaPrisma.placeholder = "Altura prisma"
            }
            alerta.addTextField{
                (txtBase) in txtBase.placeholder = "Base"
            }
        case "Cuadrado":
            alerta.addTextField{
                (txtLado) in txtLado.placeholder = "Lado"
            }
            alerta.addTextField{
                (txtAltura) in txtAltura.placeholder = "Altura Prisma"
            }
        case "Rectangulo":
            alerta.addTextField{
                (txtBase) in
                txtBase.placeholder = "Base"
            }
            alerta.addTextField{
                (txtAltura) in txtAltura.placeholder = "Altura rectangulo"
            }
            alerta.addTextField{
                (txtAlturaPrisma) in txtAlturaPrisma.placeholder = "Altura prisma"
            }
        case "Pentagono":
            alerta.addTextField{
                (txtLado) in txtLado.placeholder = "Lado"
            }
            alerta.addTextField{
                (txtApotema) in txtApotema.placeholder = "Apotema"
            }
            alerta.addTextField{
                (txtAltura) in txtAltura.placeholder = "Altura Prisma"
            }
        default:
            self.lblResultado.text = "Figura invalida"
        }
        let btnCancelar = UIAlertAction(title: "Cancelar", style: .cancel)
        let btnCalcular = UIAlertAction(title: "Calcular", style: .default, handler: {
            _ in
            switch figuraSeleccionada{
            case "Circulo":
                let radio = Double (alerta.textFields![0].text!)
                let altura = Double(alerta.textFields![1].text!)
                let circulo = Circulo(radioVolumen: radio!, altura: altura!)
                self.lblDatosEntrada.text = "Radio: \(circulo.radio!), Altura Prisma: \(circulo.altura!)"
                self.lblResultado.text = "Volumen \(circulo.calcularVolumen())"
            case "Triangulo":
                let altura = Double (alerta.textFields![0].text!)
                let alturaPrisma = Double(alerta.textFields![1].text!)
                let base = Double(alerta.textFields![2].text!)
                let triangulo = Triangulo(base: base!, alturaTriangulo: altura!, alturaPrisma: alturaPrisma!)
                self.lblDatosEntrada.text = "Altura: \(triangulo.altura!), Base: \(triangulo.base!), Altura Prisma: \(triangulo.alturaPrisma!)"
                self.lblResultado.text = "Volumen \(triangulo.calcularVolumen())"
            case "Cuadrado":
                let lado = Double (alerta.textFields![0].text!)
                let altura = Double(alerta.textFields![1].text!)
                let cuadrado = Cuadrado(lado: lado!, altura: altura!)
                self.lblDatosEntrada.text = "Lado: \(cuadrado.lado!), Altura Prisma: \(cuadrado.alturaPrisma!)"
                self.lblResultado.text = "Volumen \(cuadrado.calcularVolumen())"
            case "Rectangulo":
                let base = Double (alerta.textFields![0].text!)
                let altura = Double(alerta.textFields![1].text!)
                let alturaPrisma = Double(alerta.textFields![2].text!)
                let rectangulo = Rectangulo(base: base!, altura: altura!, alturaPrisma: alturaPrisma!)
                self.lblDatosEntrada.text = "Base: \(rectangulo.base!), Altura: \(rectangulo.altura!), Altura Prisma: \(rectangulo.alturaPrisma!)"
                self.lblResultado.text = "Volumen \(rectangulo.calcularVolumen())"
            case "Pentagono":
                let lado = Double (alerta.textFields![0].text!)
                let apotema = Double(alerta.textFields![1].text!)
                let altura = Double(alerta.textFields![2].text!)
                let pentagono = Pentagono(ladoVolumen: lado!, apotemaVolumen: apotema!, alturaPrisma: altura!)
                self.lblDatosEntrada.text = "Lado: \(pentagono.lado!), Apotema: \(pentagono.apotema!), Altura Prisma: \(pentagono.alturaPrisma!)"
                self.lblResultado.text = "Volumen \(pentagono.calcularVolumen())"
            default:
                self.lblResultado.text = "Error al calcular el volumen"
            }
        })
        alerta.addAction(btnCancelar)
        alerta.addAction(btnCalcular)
        self.present(alerta, animated: true, completion: nil)
    }
}

