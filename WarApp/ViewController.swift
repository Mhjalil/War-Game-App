//
//  ViewController.swift
//  WarApp
//
//  Created by MohammadHosein Jalilolghadr on 14/5/18.
//  Copyright © 2018 Marco Jalili. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftImageView: UIImageView!

    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //leftImageView.image
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dealTapped(_ sender: Any) {
        
        // Randomize the image numbers
        let leftRandomNumber = arc4random_uniform(13) + 2
        let rightRandomNumber = arc4random_uniform(13) + 2
        
        // Change the image views
        leftImageView.image = UIImage (named: "card\(leftRandomNumber)")
        rightImageView.image = UIImage (named: "card\(rightRandomNumber)")
        
        // Compare the numbers
        if leftRandomNumber > rightRandomNumber {
            
            leftScore += 1                               //update the score
            leftScoreLabel.text = String(leftScore)      //update the label
        }
        else if rightRandomNumber > leftRandomNumber {
            
            rightScore += 1                              //update the score
            rightScoreLabel.text = String(rightScore)    //update the label
        }
        else if leftRandomNumber == rightRandomNumber {
            
        }
    }
    
}

