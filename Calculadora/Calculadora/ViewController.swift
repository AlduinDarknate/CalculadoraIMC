//
//  ViewController.swift
//  Calculadora
//
//  Created by Mac13 on 25/02/22.
//

import UIKit

class ViewController: UIViewController {
    
    var cerebroCalculadora = CerebroCalculadora()
    
    var peso: Float = 72.0
    var altura: Float = 1.77
    var imc: Double = 0.0

    @IBOutlet weak var valorAlturaLbl: UILabel!
    @IBOutlet weak var valorPesoLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sliderAltura(_ sender: UISlider) {
        //print(String(format: "%.2f",sender.value))
        valorAlturaLbl.text = String(format: "%.2f",sender.value)
        //Guarda valor del slider
        altura = Float(sender.value) / 100
    }
    
    @IBAction func sliderPeso(_ sender: UISlider) {
        print(sender.value)
        valorPesoLbl.text = String(format: "%.2f",sender.value)
        peso = Float(sender.value)
    }
    
    @IBAction func calcularBtn(_ sender: UIButton) {
        cerebroCalculadora.calcularIMC(peso: peso, altura: altura)
        
        performSegue(withIdentifier: "calcularSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let objDestino = segue.destination as! SegundoViewController
        objDestino.valorIMC = cerebroCalculadora.retornarValorStringIMC()
        objDestino.mensaje = cerebroCalculadora.darAviso()
        objDestino.color = cerebroCalculadora.retornarColor()
        objDestino.imagen = cerebroCalculadora.retornarImagen()
    }
    
}

