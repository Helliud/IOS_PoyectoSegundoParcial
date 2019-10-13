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
        
        automovil.append(modeloAutomovil(placas: "ASD-123", marca: "NISSAN", modelo: "TSURU", dueño: "Roberto Aceves", año: "1999", foto: "1"))
        
        automovil.append(modeloAutomovil(placas: "HDD-323", marca: "TESLA", modelo: "MODELO X", dueño: "Agustìn Manig", año: "2018", foto: "2"))

        automovil.append(modeloAutomovil(placas: "SSD-777", marca: "VOLKSWAGEN", modelo: "BEETLE", dueño: "Carlos Camacho", año: "2019", foto: "3"))

        automovil.append(modeloAutomovil(placas: "AIDS-699", marca: "BMW", modelo: "MINI COOPER", dueño: "Salinas de Gortari", año: "2016", foto: "4"))

        automovil.append(modeloAutomovil(placas: "ARR-666", marca: "DODGE", modelo: "CHALLENGER", dueño: "Jesus Barco", año: "2019", foto: "5"))

        automovil.append(modeloAutomovil(placas: "QWE-441", marca: "CHEVROLET", modelo: "SONIC", dueño: "Patricia Durcal", año: "1999", foto: "6"))

    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return automovil.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
         return 140
     }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaAutos") as? cell_Automovil
        
        celda?.imgCarro.image = UIImage(named: automovil[indexPath.row].foto!)
        celda?.lblDueño.text = automovil[indexPath.row].dueño
        celda?.lblMarca.text = automovil[indexPath.row].marca
        celda?.lblModelo.text = automovil[indexPath.row].modelo
        celda?.lblPlacas.text = automovil[indexPath.row].placas
        celda?.lblAño.text = automovil[indexPath.row].año
    
        return celda!
    }
    
    func recargarTable(){
           tvAutomoviles.reloadData()
       }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "goToCrearAuto"){
            let destino = segue.destination as? crearAutoController
                       
            automovil.append(modeloAutomovil(placas: "", marca: "", modelo: "", dueño: "", año: "", foto: "generic"))
                       destino?.automovil = automovil[automovil.count-1]
                       
                       destino?.callbackAgregarAuto = recargarTable
        }
        
        if(segue.identifier == "goToEditarAuto"){
            let destino = segue.destination as? editarAutoController
            destino?.automovil = automovil[tvAutomoviles.indexPathForSelectedRow!.row]
            
            destino?.callbackAgregarAuto = recargarTable
        }
    }
    
    }
    


