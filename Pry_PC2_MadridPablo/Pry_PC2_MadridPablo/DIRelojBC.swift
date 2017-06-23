//
//  DIRelojBC.swift
//  Pry_PC2_MadridPablo
//
//  Created by B303-20 on 23/05/17.
//  Copyright © 2017 B303-24. All rights reserved.
//

import UIKit
import CoreData

class DIRelojBC: NSObject {

    typealias Agregar       = (_ objReloj : Relojes) -> Void
    typealias MensajeError  = (_ mensaje : String) -> Void
    
    /*@discardableResult class func agregarAlumno(_ objAlumno : DIAlumnoBE) -> Alumnos{
     
     DIAlumnoDALC.sharedInstance.arrayAlumnos.append(objAlumno)
     
     return objAlumno
     }*/
    class func listarTodosLosRelojesPorMarca()->[Relojes]{
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return DIRelojDALC.listarTodosConContexto(appDelegate.persistentContainer.viewContext)}
    
    class func agregar(_ objReloj : DIRelojBE,  conCorrecto correcto : Agregar, conError error : MensajeError){
        
        
        if objReloj.reloj_id == nil{
            error("Ingresar dato")
            return
        }
        
        if objReloj.reloj_marca  == nil{
            error("Ingresar dato")
            return
        }
        
        if objReloj.reloj_modelo == nil{
            error("Ingresar dato")
            return
        }
        
        if objReloj.reloj_precio == nil{
            error("Ingresar dato")
            return
        }
        
        if objReloj.reloj_stock == nil{
            error("Ingresar dato")
            return
        }
        
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        let objRelojes = DIRelojDALC.agregarReloj(objReloj: objReloj, conContexto: appDelegate.persistentContainer.viewContext)
        appDelegate.saveContext()
        
        correcto(objRelojes)
        
        /*let objAMode = DIAlumnosDALC.agregar(objModeloAuto, enMarcaAuto: objMarca!, conContexto: appDelegate.persistentContainer.viewContext)
         appDelegate.saveContext()
         
         correcto(objModelo)*/
        
    }

    
}

