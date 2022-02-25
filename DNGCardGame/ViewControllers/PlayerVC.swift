//
//  PlayerVC.swift
//  DNGCardGame
//
//  Created by gleba on 25.01.2022.
//

import UIKit
protocol delegateChosen{
    func imageTapped()
}
class PlayerVC: UIViewController {
   var image = imageCreator()
    var picture:UIImage?
    var index = 1
    var chosenImages=[UIImage]()
    var currentPlayer = 1
    var playersCount = 4
    func answers(){
        chosenImages.append(image.images[index])
        
    }
    @IBAction func didTapImageView(_ sender: UITapGestureRecognizer){
        for _ in currentPlayer-1..<playersCount{
               
        }
        chosenImages.append(image.images[index])
     let vc = storyboard?.instantiateViewController(withIdentifier: "ResultsViewController") as! ResultsViewController
        vc.imagesArray = chosenImages
        print("tapped")
        
    }
  
    @IBAction func leftSwipe(_ sender: UISwipeGestureRecognizer) {
        if index>0{index-=1}else{index=4}
        picture = image.images[index]
        player.image = picture
    }
    @IBAction func rigthSwipe(_ sender: UISwipeGestureRecognizer) {
        if index<4{index+=1}else{index=0}
        picture = image.images[index]
        player.image = picture
    }
    @IBOutlet weak var situationLabel: UILabel!
    @IBOutlet weak var player: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        picture = image.images.first
        player.image = picture
        situationLabel.text = situation
        
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
