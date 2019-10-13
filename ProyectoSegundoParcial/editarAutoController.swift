//
//  editarAutoController.swift
//  ProyectoSegundoParcial
//
//  Created by equipo on 11/10/19.
//  Copyright © 2019 ulsa. All rights reserved.
//

import Foundation
import UIKit

class editarAutoController : UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var cargas : [modeloGasolina] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return cargas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaGasolina") as? cell_Gasolina
        
        celda?.lblLitros.text = cargas[indexPath.row].litros!
        celda?.lblPrecio.text = cargas[indexPath.row].precio!
        
        return celda!
    }
    
    
    var automovil : modeloAutomovil?
    var callbackAgregarAuto : (() -> Void)?
    var estadoBotonGuardar = false

    @IBOutlet weak var txtPlacaEditar: UITextField!
    @IBOutlet weak var txtConductorEditar: UITextField!
    @IBOutlet weak var txtMarcaEditar: UITextField!
    @IBOutlet weak var txtModeloEditar: UITextField!
    @IBOutlet weak var txtAñoEditar: UITextField!
    
    @IBOutlet weak var btnEditar: UIBarButtonItem!
    
    override func viewDidLoad() {
        cargas.append(modeloGasolina(precio: "$150", litros: "12 litros", placas: "asd"))
        
        cargas.append(modeloGasolina(precio: "$150", litros: "12 litros", placas: "asd"))
        
        cargas.append(modeloGasolina(precio: "$150", litros: "12 litros", placas: "asd"))
                      
        txtConductorEditar.text = automovil!.dueño
        txtMarcaEditar.text = automovil!.marca
        txtModeloEditar.text = automovil!.modelo
        txtPlacaEditar.text = automovil!.placas
        txtAñoEditar.text = automovil!.año
        self.title = txtPlacaEditar.text
        
        callbackAgregarAuto!()
        
    }
    
    @IBAction func doTapEditar(_ sender: Any) {
        if(estadoBotonGuardar == false){
            btnEditar.title = "Guardar"
            
            txtPlacaEditar.isEnabled = true
            txtAñoEditar.isEnabled = true
            txtModeloEditar.isEnabled = true
            txtConductorEditar.isEnabled = true
            txtMarcaEditar.isEnabled = true
            txtAñoEditar.isEnabled = true
            estadoBotonGuardar = true
        }
        else if(estadoBotonGuardar == true){
            
            automovil!.dueño = txtConductorEditar.text
            automovil!.marca = txtMarcaEditar.text
            automovil!.modelo = txtModeloEditar.text
            automovil!.placas = txtPlacaEditar.text!
            automovil!.año = txtAñoEditar.text
            callbackAgregarAuto!()
            self.navigationController?.popViewController(animated: true)
            
        }

    }
    
  
    
}
