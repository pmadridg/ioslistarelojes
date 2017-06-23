//
//  DIAgregarRelojViewController.swift
//  Pry_PC2_MadridPablo
//
//  Created by B303-18 on 23/05/17.
//  Copyright © 2017 B303-24. All rights reserved.
//

import UIKit

class DIAgregarRelojViewController: UIViewController {

    
 
    @IBOutlet weak var txtID: UITextField!
    @IBOutlet weak var txtModelo: UITextField!
    @IBOutlet weak var txtMarca: UITextField!
    @IBOutlet weak var txtPrecio: UITextField!
    @IBOutlet weak var txtStock: UITextField!
    
    
    @IBAction func clickBtnGuardar(_ sender: Any) {
        
        let objReloj = DIRelojBE()
        
        objReloj.reloj_modelo = self.txtModelo.text!
        objReloj.reloj_marca = self.txtMarca.text!
        objReloj.reloj_id = self.txtID.text!
        objReloj.reloj_stock = Int(self.txtStock.text!)
        objReloj.reloj_precio = self.txtPrecio.text!
        
        DIRelojBC.agregar(objReloj, conCorrecto: {(objRelojDM) in
            _ = self.navigationController?.popViewController(animated: true)
        }) { (mensajeError) in
            print(mensajeError)
        }
        
        _ = self.navigationController?.popViewController(animated: true)
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
