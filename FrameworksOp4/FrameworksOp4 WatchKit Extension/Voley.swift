//
//  Voley.swift
//  FrameworksOp4 WatchKit Extension
//
//  Created by Andrés on 30/11/17.
//  Copyright © 2017 Andrés. All rights reserved.
//

import WatchKit
import Foundation


class Voley: WKInterfaceController {

    var puntoLocal = 0      // Variable que controla los puntos del equipo Local
    var puntoVisitante = 0  // Variable que controla los puntos del equipo Visitante
    
    var setLocal = 0        // Variable que controla los sets del equipo Local
    var setVisitante = 0    // Variable que controla los sets del equipo Visitante
    
    @IBOutlet var buttonLocal: WKInterfaceButton!
    @IBOutlet var buttonVisitante: WKInterfaceButton!
    
    @IBOutlet var labbelPuntoLocal: WKInterfaceLabel!
    @IBOutlet var labelPuntoVisitante: WKInterfaceLabel!
    
    @IBOutlet var labbelSetLocal: WKInterfaceLabel!
    @IBOutlet var labelSetVisitante: WKInterfaceLabel!
    
    // Funciona asociada al boton "Local +1"
    @IBAction func add_local1(){
        
        // Calculamos si tenemos una ventaja de 2
        let ventajaDe2 = puntoLocal - puntoVisitante
        
        // Si coneguimos 25 puntos y tenemos una ventaja de 2 puntos, hemos ganado el set
        if (puntoLocal >= 25 && ventajaDe2 >= 2){
            puntoLocal = 0
            setLocal = setLocal + 1
            labbelSetLocal.setText(String(setLocal))
            labbelPuntoLocal.setText(String(0))
            
            labelPuntoVisitante.setText(String(0))
            puntoVisitante = 0
        
        // Si somos los primeros en llegar a 29 puntos, hemos ganado el set
        }else if (puntoLocal == 29){
            puntoLocal = 0
            setLocal = setLocal + 1
            labbelSetLocal.setText(String(setLocal))
            labbelPuntoLocal.setText(String(0))
        
            labelPuntoVisitante.setText(String(0))
            puntoVisitante = 0
            
        // Para los demas casos suma 1 al label de puntos
        }else {
            puntoLocal = puntoLocal + 1
            labbelPuntoLocal.setText(String(puntoLocal))
        }
    }
    
    @IBAction func add_visitante1(){
        
        let ventajaDe2 = puntoVisitante - puntoLocal

        if (puntoVisitante >= 25 && ventajaDe2 >= 2){
            puntoVisitante = 0
            setVisitante = setVisitante + 1
            labelSetVisitante.setText(String(setVisitante))
            labelPuntoVisitante.setText(String(0))
            
            labbelPuntoLocal.setText(String(0))
            puntoLocal = 0
            
        }else if (puntoVisitante == 29){
            puntoVisitante = 0
            setVisitante = setVisitante + 1
            labelSetVisitante.setText(String(setVisitante))
            labelPuntoVisitante.setText(String(0))
            
            labbelPuntoLocal.setText(String(0))
            puntoLocal = 0
            
        }else {
            puntoVisitante = puntoVisitante + 1
            labelPuntoVisitante.setText(String(puntoVisitante))
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
