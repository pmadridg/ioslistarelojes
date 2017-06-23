//
//  DIRelojDALC.swift
//  Pry_PC2_MadridPablo
//
//  Created by B303-18 on 23/05/17.
//  Copyright © 2017 B303-24. All rights reserved.
//

import UIKit
import CoreData

class DIRelojDALC: NSObject {
    
    static var sharedInstance = DIRelojDALC()
    
    var arrayRelojes = [Relojes]()
    
    /*@discardableResult class func agregarAlumno(_ objAlumno : DIAlumnoBE) -> Alumnos{
     
     DIAlumnoDALC.sharedInstance.arrayAlumnos.append(objAlumno)
     
     return objAlumno
     }*/
    
    
    @discardableResult class func agregarReloj( objReloj : DIRelojBE, conContexto contexto : NSManagedObjectContext) -> Relojes {
        
        let objDM = NSEntityDescription.insertNewObject(forEntityName: "Relojes", into: contexto) as! Relojes
        
        //Base de datos core data = clase DIModeloAutoBE
        objDM.reloj_id = objReloj.reloj_id
        objDM.reloj_marca = objReloj.reloj_marca
        objDM.reloj_stock = Int16(objReloj.reloj_stock)
        objDM.reloj_precio = objReloj.reloj_precio
        objDM.reloj_modelo = objReloj.reloj_modelo
        
        
        
        return objDM
    }
    
    /*class func listarTodos() -> [Alumnos]{
     return DIAlumnoDALC.sharedInstance.arrayAlumnos
     
     }*/
    
    class func listarTodosConContexto(_ contexto : NSManagedObjectContext) -> [Relojes]{
        
        let fetchRequest : NSFetchRequest<Relojes> = Relojes.fetchRequest()
        
        do{
            return try contexto.fetch(fetchRequest)
        }catch{
            return [Relojes]()
        }
    }
    
    /*class func eliminarAlumno(_ objAlumno : DIAlumnoBE){
     
     if let index = DIAlumnoDALC.sharedInstance.arrayAlumnos.index(of: objAlumno) {
     DIAlumnoDALC.sharedInstance.arrayAlumnos.remove(at: index)
     }
     }*/


}
