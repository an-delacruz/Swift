//
//  Cuadrado.swift
//  Ejercicio 3.4.2_18100163
//
//  Created by user217478 on 4/6/22.
//

import Foundation
class Cuadrado:Figura{
    var lado: Double!
    var alturaPrisma:Double!
    //Constructor perimetro
    init(ladoPerimetro:Double) {
        self.lado = ladoPerimetro
    }
    //Constructor area
    init(ladoArea: Double) {
        self.lado = ladoArea
    }
    //Constructor volumen
    init(lado:Double, altura: Double) {
        self.lado = lado
        self.alturaPrisma = altura
    }
    func calcularPerimetro() -> Double {
        return self.lado * 4
    }
    
    func calcularArea() -> Double {
        return pow(self.lado, 2)
    }
    
    func calcularVolumen() -> Double {
        let basePrisma = pow(self.lado,2)
        return basePrisma * self.alturaPrisma
    }
    
    
}
