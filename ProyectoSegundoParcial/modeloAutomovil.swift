//
//  modeloAutomovil.swift
//  ProyectoSegundoParcial
//
//  Created by Alumno on 10/8/19.
//  Copyright © 2019 ulsa. All rights reserved.
//

import Foundation
import UIKit

class modeloAutomovil{
    
    var placas : String
    var marca : String
    var modelo : String
    var dueño : String
    var año : String
    var foto : UIImage!
    
    init(placas : String, marca : String, modelo : String, dueño : String, año : String, foto : UIImage){
        
        self.año = año
        self.dueño = dueño
        self.marca = marca
        self.placas = placas
        self.modelo = modelo
        self.foto = foto
    }
}
