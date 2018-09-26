//
//  ViewController.swift
//  newcollectionview
//
//  Created by Waad Alkatheri on 15/01/1440 AH.
//  Copyright © 1440 Waad Alkatheri. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDataSource, UICollectionViewDelegate{
    
    
    // TODO : Go to StoryBoard and add Third TabBar 
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.demoData()
           }
    
    
    
    
    // TODO: access your shared model in AppDelegate
    let appDelegate = UIApplication.shared.delegate as! AppDelegate

    

    // TODO: Creat Function that contins array of (name of Product and  product Image )
    func demoData()  {
     
        let product1 : Product = Product(name: "ipad" , PruductImage: "ipad")
        let product2 : Product = Product(name: "iphone", PruductImage: "ipad")
        let product3 : Product = Product(name: "ipod", PruductImage: "ipad")
        let product4 : Product = Product(name: "iphoneX", PruductImage: "iphonex")
        let product5 : Product = Product(name: "iphon8",PruductImage: "iphone8")
        let product6 : Product = Product(name: "iphone7", PruductImage:"iphone8" )
        
        
        appDelegate.products.append(product1)
        appDelegate.products.append(product2)
        appDelegate.products.append(product3)
        appDelegate.products.append(product4)
        appDelegate.products.append(product5)
        appDelegate.products.append(product6)

        
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        
        
        // TODO: return number of Product in array of product via  access your shared model in AppDelegate
        return appDelegate.products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        // TODO : Connect collection view with cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
       
        // TODO : connect cell with name of Product and product Image via access your shared model in AppDelegate and return Cell
        let current :Product = appDelegate.products[ indexPath.row]
        cell.lable.text = current.name
        cell.ImageProduct.image = UIImage( named: current.PruductImage)
        
        return cell
    }
    

    
    


}

