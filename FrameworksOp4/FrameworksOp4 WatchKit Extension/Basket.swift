//
//  Basket.swift
//  FrameworksOp4 WatchKit Extension
//
//  Created by Andrés on 30/11/17.
//  Copyright © 2017 Andrés. All rights reserved.
//

import WatchKit
import Foundation

class Basket: WKInterfaceController {

    var local = 0
    var visitante = 0
    var cuarto = 1
    
    @IBOutlet var buttonLocal: WKInterfaceButton!
    @IBOutlet var buttonVisitante: WKInterfaceButton!
    @IBOutlet var buttonCuarto: WKInterfaceButton!
    
    @IBOutlet var labbelLocal: WKInterfaceLabel!
    @IBOutlet var labelVisitante: WKInterfaceLabel!
    
    // Controla los puntos del partido del equipo local
    @IBAction func add_local1(){
        local = local+1
        labbelLocal.setText(String(local))
    }
    
    // Controla los puntos del partido del equipo visitante
    @IBAction func add_visitante1(){
        visitante = visitante+1
        labelVisitante.setText(String(visitante))
    }
    
    // Controla los cuartos del partido
    @IBAction func add_cuarto1(){
        // Solo hay 4 cuartos en un partido de basket, a excepcion de las prórrogas
        if (cuarto == 4){
            cuarto = 1
            buttonCuarto.setTitle(String(cuarto))
        }else {
            cuarto = cuarto+1
            buttonCuarto.setTitle(String(cuarto))
        }
       
    }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
