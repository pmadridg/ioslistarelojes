//
//  DIDetalleRelojViewController.swift
//  Pry_PC2_MadridPablo
//
//  Created by B303-18 on 23/05/17.
//  Copyright © 2017 B303-24. All rights reserved.
//

import UIKit

class DIDetalleRelojViewController: UIViewController {

    
    @IBOutlet weak var lblID: UILabel!
    @IBOutlet weak var lblMarca: UILabel!
    @IBOutlet weak var lblModelo: UILabel!
    @IBOutlet weak var lblPrecio: UILabel!
    @IBOutlet weak var lblStock: UILabel!
    
    var objReloj : Relojes!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.lblID.text = self.objReloj.reloj_id!
        self.lblModelo.text = self.objReloj.reloj_modelo!
        self.lblMarca.text = self.objReloj.reloj_marca!
        self.lblPrecio.text = "\(self.objReloj.reloj_precio!)"
        self.lblStock.text = "\(self.objReloj.reloj_stock)!"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
