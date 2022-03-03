//
//  SegundoViewController.swift
//  Calculadora
//
//  Created by Mac13 on 25/02/22.
//

import UIKit

class SegundoViewController: UIViewController {
    
    var valorIMC: String?
    var mensaje: String?
    var color: UIColor?
    var imagen: UIImage?
    

    @IBOutlet weak var valorIMCLbl: UILabel!
    
    @IBOutlet weak var mensajeLbl: UILabel!
    
    @IBOutlet weak var imagenPesoImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(valorIMC ?? "")
        print(mensaje ?? "")
        valorIMCLbl.text = valorIMC
        mensajeLbl.text = mensaje
        self.view.backgroundColor = color
        imagenPesoImg.image = imagen

        // Do any additional setup after loading the view.
    }
    
    @IBAction func calcularNuevo(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
