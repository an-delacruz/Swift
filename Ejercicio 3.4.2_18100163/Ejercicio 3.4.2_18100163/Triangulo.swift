//
//  Triangulo.swift
//  Ejercicio 3.4.2_18100163
//
//  Created by user217478 on 4/6/22.
//

import Foundation
class Triangulo:Figura{
    var ladoA : Double!
    var ladoB : Double!
    var base : Double!
    var altura: Double!
    var alturaPrisma: Double!
    
    //Constructor para inicializar propiedades para perimetro
    init(ladoA: Double, ladoB: Double, base: Double) {
        self.ladoA = ladoA
        self.ladoB = ladoB
        self.base = base
    }
    //Constructor para inicializar propiedades para area
    init(base: Double, altura: Double){
        self.base = base
        self.altura = altura
    }
    //Constructor para inicializar propiedades para volumen
    init(base: Double, alturaTriangulo: Double, alturaPrisma: Double) {
        self.base = base
        self.altura = alturaTriangulo
        self.alturaPrisma = alturaPrisma
    }
    func calcularPerimetro() -> Double {
        return self.ladoA + self.ladoB + self.base
    }
    
    func calcularArea() -> Double {
        return (self.base * self.altura) / 2
    }
    
    func calcularVolumen() -> Double {
        let basePrisma = (self.base * self.altura) / 2
        return basePrisma * self.alturaPrisma
    }
    
    
}
