//
//  ViewController.swift
//  WarUI
//
//  Created by Mohammad Hussain on 26/01/19.
//  Copyright © 2019 Mohammad Hussain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore:Int = 0
    
    var rightScore:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func dealTapped(_ sender: Any) {
        let leftRandomNumber = arc4random_uniform(13) + 2
        
        let rightRandomNumber = arc4random_uniform(13) + 2
        
        leftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        rightImageView.image = UIImage(named: "card\(rightRandomNumber)")
        
        if leftRandomNumber > rightRandomNumber {
            leftScore += 1
            
            leftScoreLabel.text = String(leftScore)
            
        }
        else if rightRandomNumber > leftRandomNumber {
            rightScore += 1
            
            rightScoreLabel.text = String(rightScore)
        }
    }
}
