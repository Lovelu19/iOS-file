//
//  ViewController.swift
//  collection view cell
//
//  Created by Admin on 1/8/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

struct Item {
    var imageName: String
    
}

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var items: [Item] =  [Item(imageName: "1"),
                         Item (imageName: "2"),
                         Item (imageName: "3"),
                         Item (imageName: "4"),
                         Item (imageName: "5"),
                         Item (imageName: "6"),
                         Item (imageName: "7"),
                         Item (imageName: "8"),
                         Item (imageName: "9"),
                         Item (imageName: "10"),
                         Item (imageName: "11"),
                         Item (imageName: "12")]
                         
    var collectionViewFlowLayout: UICollectionViewFlowLayout!
    let cellIdentifire = "ItemCollectViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupCollectionView()
        
    }

    private func setupCollectionView() {
    collectionView.delegate = self
    collectionView.dataSource = self
       let nib = UINib(nibName: "ItemCollectionViewCell", Bundle: nil)
    collectionView.register(nib, forCellWithReuseIdentifier: cellIdentifire)
        
 }
    
    private func setupCollectiinViewItensSize(){
        if collectionViewFlowLayout == nil {
        let numberOfItemPerROw: CGFloat = 3
        let lineSpacing: CGFloat = 5
        let interItemSpacing: CGFloat  = 5
        
        let width = (collectionView.frame.width - (numberOfItemPerROw - 1 ) * interItemSpacing)
        }; / numberOfItemPerRow
        let hight = width
        
        collectionViewFlowLayout = UICollectionViewFlowLayout()
        collectionViewFlowLayout.itemSize = CGSize(width: width, height: hight)
        collectionViewFlowLayout.sectionInset = UIEdgeInsets.zero
        collectionViewFlowLayout.scrollDirection = .vertical
        collectionViewFlowLayout.ninimumLineSpacing = lineSpacing
        collectionViewFlowLayout.ninimumInteritemSpacing = interItemSpacing
    }
}

}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifire, for: indexPath) as!
        ItemCollectionViewCell
        
        cell.imageView.image = UIImage(named: items[indexPath.item].imageName)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("didSelectItemAt: \(indexPath.row)")
   
}


}

