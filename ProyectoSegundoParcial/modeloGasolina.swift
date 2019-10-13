//
//  modeloGasolina.swift
//  ProyectoSegundoParcial
//
//  Created by equipo on 11/10/19.
//  Copyright © 2019 ulsa. All rights reserved.
//

import Foundation
import UIKit

class modeloGasolina{
    var precio : String?
    var litros : String?
    var placas : String?
    
    init(precio : String, litros : String, placas : String) {
        self.litros = litros
        self.placas = placas
        self.precio = precio
    }
}
