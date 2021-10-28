//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let diceArray = [UIImage(imageLiteralResourceName: "DiceOne"),
                     UIImage(imageLiteralResourceName: "DiceTwo"),
                     UIImage(imageLiteralResourceName: "DiceThree"),
                     UIImage(imageLiteralResourceName: "DiceFour"),
                     UIImage(imageLiteralResourceName: "DiceFive"),
                     UIImage(imageLiteralResourceName: "DiceSix")]
    @IBOutlet weak var diceImageOne: UIImageView!
    @IBOutlet weak var diceImageTwo: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        diceImageOne.image = UIImage(imageLiteralResourceName: "DiceTwo")
        diceImageTwo.image = UIImage(imageLiteralResourceName: "DiceFour")
        
    }
    @IBAction func rollButton(_ sender: Any) {
        print("Button Tapped")
        
        
        diceImageOne.image = diceArray[Int.random(in: 0...5)]
        diceImageTwo.image = diceArray[Int.random(in: 0...5)]
        
    }
    

}

