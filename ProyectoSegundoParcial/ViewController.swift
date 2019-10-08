//
//  ViewController.swift
//  ProyectoSegundoParcial
//
//  Created by Alumno on 10/8/19.
//  Copyright © 2019 ulsa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var automovil : [modeloAutomovil] = []
    
    @IBOutlet weak var tvAutomoviles: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        automovil.append(modeloAutomovil(placas: "ASD-123", marca: "NISSAN", modelo: "TSURU", dueño: "EL CACAS", año: "1999", foto: UIImage(named: "1")!))
    
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return automovil.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaAutos") as? cell_Automovil
        
        return celda!
    }
    
    
    
    


}

