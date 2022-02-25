//
//  ViewController.swift
//  DNGCardGame
//
//  Created by gleba on 25.01.2022.
//

import UIKit
public var situation = "alolo"
public var situationsArray = ["Плыли мы по морю", "Пупка"]
public protocol situationDelegate{
    func sitDel(_ situatiom: String)
}
class ViewController: UIViewController {
    var delegate:situationDelegate?
    @IBOutlet weak var numberTextfield: UITextField!
    @IBOutlet weak var situationText: UIButton!
    @IBOutlet weak var situationButtonOutlet: UIButton!
    @IBAction func SituationButton(_ sender: Any) {
        delegate?.sitDel(situation)
        }
    override func viewDidLoad() {
    
        situationText.isHidden = true
        situationButtonOutlet.isHidden = true
        situation = situationsArray.randomElement()!
        situationText.setTitle("\(situation)", for: .normal)
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

