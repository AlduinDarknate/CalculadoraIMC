//
//  CerebroCalculadora.swift
//  Calculadora
//
//  Created by Mac13 on 01/03/22.
//

import Foundation
import UIKit

struct CerebroCalculadora {
    var  imc: IMC?
    
    mutating func calcularIMC(peso: Float, altura: Float){
        let valorIMC = peso / (altura * altura)
        
        if valorIMC < 18.5{
            imc = IMC(valor: valorIMC, mensaje: "Bajo peso coma mas nutrientes y alimentese mejor", color: UIColor.cyan, imagen: #imageLiteral(resourceName: "bajo-peso-corporal"))
        }else if valorIMC < 24.9{
            imc = IMC(valor: valorIMC, mensaje: "Tu peso es normal, le sabes", color: UIColor.green, imagen: #imageLiteral(resourceName: "Ideal"))
        }else if valorIMC < 29.9{
            imc = IMC(valor: valorIMC, mensaje: "Estas con sobrepeso come mas saludable y haz ejercicio", color: UIColor.orange, imagen: #imageLiteral(resourceName: "Obesidad"))
        } else if valorIMC > 30.0{
            imc = IMC(valor: valorIMC, mensaje: "Usted tiene obesidad consulte a su medico y coma mas saludable", color: UIColor.red, imagen: #imageLiteral(resourceName: "Sobrepeso"))
        }
    }
    
    func retornarValorStringIMC() -> String {
        let imcCon2Decimales = String(format: "%.2f", imc?.valor ?? 0.0)
        return imcCon2Decimales
    }
    
    func darAviso() -> String {
        return imc?.mensaje ?? "no hay mensaje"
    }
    
    func retornarColor() -> UIColor {
        return imc?.color ?? UIColor.blue
    }
    
    func retornarImagen() -> UIImage {
        return imc?.imagen ?? #imageLiteral(resourceName: "BajoPeso")
    }
}
