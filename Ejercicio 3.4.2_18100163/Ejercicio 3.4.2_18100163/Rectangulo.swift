//
//  Rectangulo.swift
//  Ejercicio 3.4.2_18100163
//
//  Created by user217478 on 4/6/22.
//

import Foundation

class Rectangulo:Figura{
    var base:Double!
    var altura:Double!
    var alturaPrisma:Double!
    //Constructor perimetro
    init(basePerimetro:Double, alturaPerimetro:Double) {
        self.base = basePerimetro
        self.altura = alturaPerimetro
    }
    //Constructor area
    init(baseArea:Double,alturaArea:Double) {
        self.base = baseArea
        self.altura = alturaArea
    }
    //Constructor volumen
    init(base:Double, altura:Double, alturaPrisma:Double){
        self.base = base
        self.altura = altura
        self.alturaPrisma = alturaPrisma
    }
    func calcularPerimetro() -> Double {
        return 2 * (self.base + self.altura)
    }
    
    func calcularArea() -> Double {
        return self.base * self.altura
    }
    
    func calcularVolumen() -> Double {
        let basePrisma = self.base * self.altura
        return basePrisma * self.alturaPrisma
    }
    
    
}
