//
//  DIRelojDALC.swift
//  Pry_PC2_MadridPablo
//
//  Created by B303-18 on 23/05/17.
//  Copyright © 2017 B303-24. All rights reserved.
//

import UIKit

class DIRelojDALC: NSObject {
    
    //Instancia singleton
    static var sharedInstance = DIRelojDALC()
    
    var arrayReloj = [DIRelojBE]()
    
    @discardableResult class func agregarReloj(_ objReloj : DIRelojBE) -> DIRelojBE? {
        
        DIRelojDALC.sharedInstance.arrayReloj.append(objReloj)
        return objReloj
        
    }
    
    class func listarTodos() -> [DIRelojBE] {
        
        return DIRelojDALC.sharedInstance.arrayReloj
        
    }
    
    class func eliminarReloj(_ objReloj : DIRelojBE) {
        
        if let index = DIRelojDALC.sharedInstance.arrayReloj.index(of: objReloj){
            DIRelojDALC.sharedInstance.arrayReloj.remove(at: index);
        }
    }

}
