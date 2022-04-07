//
//  Pentagono.swift
//  Ejercicio 3.4.2_18100163
//
//  Created by user217478 on 4/6/22.
//

import Foundation

class Pentagono:Figura{
    var lado:Double!
    var apotema:Double!
    var alturaPrisma:Double!
    //Constructor perimetro
    init(ladoPerimetro:Double) {
        self.lado = ladoPerimetro
    }
    //Constructor area
    init(ladoArea:Double,apotemaArea:Double) {
        self.lado = ladoArea
        self.apotema = apotemaArea
    }
    //Constructor volumen
    init(ladoVolumen:Double,apotemaVolumen:Double, alturaPrisma:Double) {
        self.lado = ladoVolumen
        self.apotema = apotemaVolumen
        self.alturaPrisma = alturaPrisma
    }
    func calcularPerimetro() -> Double {
        return 5 * self.lado
    }
    
    func calcularArea() -> Double {
        let perimetro = 5 * self.lado
        return (perimetro * self.apotema) / 2
    }
    
    func calcularVolumen() -> Double {
        let perimetro = 5 * self.lado
        let basePrisma = (perimetro * self.apotema) / 2
        return basePrisma * self.alturaPrisma
    }
    
    
}
