//
//  DIRelojCollectionViewCell.swift
//  Pry_PC2_MadridPablo
//
//  Created by B303-18 on 23/05/17.
//  Copyright © 2017 B303-24. All rights reserved.
//

import UIKit
import CoreData

class DIRelojCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var imgReloj: UIImageView!
    
    @IBOutlet weak var lblNombreReloj: UILabel!
    
    var objReloj = Relojes()
    
    override func draw(_ rect: CGRect) {
        self.layer.shadowRadius = 3
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 1, height: 1)
        self.layer.shadowOpacity = 0.5
        self.layer.masksToBounds = false
    }
    
    func actualizarData()
    {
        self.lblNombreReloj.text = "\(self.objReloj.reloj_marca!) - \(self.objReloj.reloj_modelo!)"
    }

}
