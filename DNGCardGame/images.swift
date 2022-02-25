//
//  images.swift
//  DNGCardGame
//
//  Created by gleba on 26.01.2022.
//

import Foundation
import UIKit

class imageCreator{
    var images = [UIImage]()
    var allImages = [UIImage]()
    let defaultImage = UIImage(named: "im0")!
    
    
    init(){
        setupPictures()
    }
    func setupPictures(){
        for j in 0...45{
            let image = UIImage(named: "im\(j+1)")!
//            print(j)
            allImages.append(image)
//            print(allImages[j])
        }
        
        func generateNew(){
            for _ in 0...4{
                var index = Int.random(in: 0...45)
                while allImages[index]==defaultImage{index=Int.random(in: 0...45)}
//            print("\(index):\(allImages[index])")
            images.append(allImages[index])
                allImages[index] = defaultImage

            }
        }
        generateNew()
        
//        for i in 0...45{
//
//        }
        
//        print(allImages.count)
    }
}
