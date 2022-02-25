//
//  FullScreenVC.swift
//  DNGCardGame
//
//  Created by gleba on 07.02.2022.
//

import UIKit

class FullScreenVC: UIViewController {
    var imagesFS = [UIImage]()
    var countCells = 1.0
    var indexPathA : IndexPath!
    @IBOutlet weak var collectionViewFS: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
//        print(imagesFS)
//        collectionViewFS.register(UINib(nibName: "FullScreenCell", bundle: nil), forCellWithReuseIdentifier: "FullScreenCell")
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension FullScreenVC: UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{

func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return imagesFS.count
}

func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FullScreenCell", for: indexPath) as! FullScreenCell
    cell.pictureView.image = imagesFS[indexPath.item]
//        cell.layer.anchorPoint = CGPoint(x: 0, y: 0)
    cell.pictureView.contentMode = .scaleAspectFit
    return cell
}
func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    let frameCV = collectionView.frame
    let w = frameCV.width / countCells
    let h = frameCV.height / countCells
    return CGSize(width: w, height: h - 10)
}
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}

