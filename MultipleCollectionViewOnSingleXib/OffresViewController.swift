//
//  OffresViewController.swift
//  Children_App
//
//  Created by a on 22/02/21.
//  Copyright © 2021 a. All rights reserved.
//

import UIKit

class OffresViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    
       @IBOutlet weak var UseCcollection: UICollectionView!
    
    var arrimg = ["maverick 1","maverick 2","Movie Tickets 1","maverick 1","maverick 1","Movie Tickets 1", "Movie Tickets 1","Movie Tickets 1","maverick 1","Movie Tickets 1","maverick 1"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.UseCcollection.register(UINib(nibName: "OffersCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "OffersCollectionViewCell")
        self.UseCcollection.delegate = self
        self.UseCcollection.dataSource = self
    }
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrimg.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let padding: CGFloat =  10
        let width = (UseCcollection.bounds.width)/2 - 10
        let collectionViewSize = collectionView.frame.size.width - padding
        return CGSize(width: width, height: collectionViewSize/2)
    }
   
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OffersCollectionViewCell", for: indexPath as IndexPath) as! OffersCollectionViewCell
        cell.Img.image = UIImage(named: arrimg[indexPath.row])
              return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    

}
