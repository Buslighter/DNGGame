//
//  ResultsViewController.swift
//  DNGCardGame
//
//  Created by gleba on 26.01.2022.
//

import UIKit

class ResultsViewController: UIViewController {
    let countCells : CGFloat = 2
//    var images = [UIImage]()
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
//        collectionView.dataSource = self
//        collectionView.delegate = self
    }
  var imagesArray = [UIImage]()
}
extension ResultsViewController:UICollectionViewDataSource,UICollectionViewDelegateFlowLayout,UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagesArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! ImageCell
        cell.imageView.image = imagesArray[indexPath.item]
//        cell.layer.anchorPoint = CGPoint(x: 0, y: 0)
        cell.imageView.contentMode = .scaleAspectFill
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let frameCV = collectionView.frame
        let w = frameCV.width / countCells
        let h = frameCV.height / countCells
        return CGSize(width: w - 10, height: h - 10)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "FullScreenVC") as! FullScreenVC
        vc.imagesFS = imagesArray
        print(vc.imagesFS)
        print(vc.indexPathA)
        vc.indexPathA = indexPath
        self.present(vc, animated: true, completion: nil)
        
    }
    
}
