//
//  DIRelojViewController.swift
//  Pry_PC2_MadridPablo
//
//  Created by B303-18 on 23/05/17.
//  Copyright © 2017 B303-24. All rights reserved.
//

import UIKit

class DIRelojViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    
    @IBOutlet weak var clvRelojes: UICollectionView!
    
    var arrayReloj = [DIRelojBE]()
    
    //MARK: - UICollectionViewDelegate UICollectionViewDataSource
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return self.arrayReloj.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cellIdentifier = "DIRelojCollectionViewCell"
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! DIRelojCollectionViewCell
        
        cell.objReloj = self.arrayReloj[indexPath.row]
        cell.actualizarData()
        
        return cell
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        self.arrayReloj = DIRelojBC.listarRelojPorMarca()
        self.clvRelojes.reloadData()
        
        super.viewWillAppear(animated)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let nuevoAnchoCelda = (collectionView.bounds.size.width - 30) / 2
        let nuevaAlturaCelda = nuevoAnchoCelda * 200 / 145
        
        return CGSize(width: nuevoAnchoCelda, height: nuevaAlturaCelda)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "DIDetalleRelojViewController", sender: self.arrayReloj[indexPath.row])
    }
    
    
    //MARK: -
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let objReloj1 = DIRelojBE()
        
        objReloj1.reloj_modelo = "Cerato"
        objReloj1.reloj_marca = "Kia"
        objReloj1.reloj_id = "K0001"
        objReloj1.reloj_stock = 2017
        
        let objReloj2 = DIRelojBE()
        
        objReloj2.reloj_modelo = "Cerato"
        objReloj2.reloj_marca = "Kia5"
        objReloj2.reloj_id = "K0002"
        objReloj2.reloj_stock = 2017
        
        DIRelojBC.guardarReloj(objReloj1)
        DIRelojBC.guardarReloj(objReloj2)
        
        self.arrayReloj = DIRelojBC.listarRelojPorMarca()
        
        self.clvRelojes.reloadData()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "DIDetalleRelojViewController" {
            let controller = segue.destination as! DIDetalleRelojViewController
            controller.objReloj = sender as! DIRelojBE
        }
    }
    


}
