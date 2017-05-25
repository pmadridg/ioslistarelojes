//
//  DIRelojBC.swift
//  Pry_PC2_MadridPablo
//
//  Created by B303-20 on 23/05/17.
//  Copyright © 2017 B303-24. All rights reserved.
//

import UIKit

class DIRelojBC: NSObject {

    @discardableResult class func guardarReloj(_ objReloj : DIRelojBE) -> DIRelojBE? {
        
        let objRelojGuardado = DIRelojDALC.agregarReloj(objReloj)
        return objRelojGuardado
    }
    
    class func listarRelojPorMarca() -> [DIRelojBE] {
        
        let arrayReloj = DIRelojDALC.listarTodos()
        //TODO: ORDENAR POR MARCA
        return arrayReloj
    }
    
    class func listarRelojPorModelo() -> [DIRelojBE] {
        
        let arrayReloj = DIRelojDALC.listarTodos()
        //TODO: ORDENAR POR AÑO
        return arrayReloj
    }
    
    class func eliminarReloj(_ objReloj : DIRelojBE) {
        
        DIRelojDALC.eliminarReloj(objReloj)
    }
}
