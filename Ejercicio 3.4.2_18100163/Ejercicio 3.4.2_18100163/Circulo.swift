//
//  Circulo.swift
//  Ejercicio 3.4.2_18100163
//
//  Created by user217478 on 4/6/22.
//

import Foundation
class Circulo:Figura{
    var radio: Double!
    var altura: Double!
    //Constructor para inicializar propiedades para perimetro
    init(radioPerimetro: Double){
        self.radio = radioPerimetro
    }
    //Constructor para inicializar propiedades para area
    init(radioArea: Double){	
        self.radio = radioArea
    }
    //Constructor para inicializar propiedades para volumen
    init(radioVolumen: Double, altura: Double) {
        self.radio = radioVolumen
        self.altura = altura
    }
    func calcularPerimetro() -> Double {
        return 2 * self.radio * Double.pi
    }
    
    func calcularArea() -> Double {
        return Double.pi * pow(self.radio, 2)
    }
    
    func calcularVolumen() -> Double {
        return Double.pi * pow(self.radio, 2) * self.altura
    }
    
    
}
