//
//  crearContactoController.swift
//  ProyectoSegundoParcial
//
//  Created by equipo on 11/10/19.
//  Copyright © 2019 ulsa. All rights reserved.
//

import Foundation
import UIKit

class crearAutoController : UIViewController{
    var automovil : modeloAutomovil?
    var callbackAgregarAuto : (() -> Void)?
    
    @IBOutlet weak var txtPlacas: UITextField!
    @IBOutlet weak var txtConductor: UITextField!
    @IBOutlet weak var txtMarca: UITextField!
    @IBOutlet weak var txtModelo: UITextField!
    @IBOutlet weak var txtAño: UITextField!
    
    
    @IBAction func btnGuardar(_ sender: Any) {
        automovil!.placas = txtPlacas.text!
        automovil!.dueño = txtConductor.text
        automovil!.marca = txtMarca.text
        automovil!.modelo = txtModelo.text
        automovil!.año = txtAño.text
        
        callbackAgregarAuto!()
        
         self.navigationController?.popViewController(animated: true)

    }
    
    
    
}
