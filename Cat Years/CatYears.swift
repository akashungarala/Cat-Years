//
//  CatYears.swift
//  Cat Years
//
//  Created by Akash Ungarala on 10/10/16.
//  Copyright © 2016 Akash Ungarala. All rights reserved.
//

import UIKit

class CatYears: UIViewController {
    
    @IBOutlet var ageHumanYears: UITextField!
    @IBOutlet var ageCatYears: UILabel!
    @IBOutlet var cat: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func findAge(sender: AnyObject) {
        if let age = Int(ageHumanYears.text!) {
            var result = 0
            if age == 1 {
                result = 15
                cat.image = UIImage(named: "Kitten")
            } else if age == 2 {
                result = 24
                cat.image = UIImage(named: "Junior")
            } else if age == 3 || age == 4 || age == 5 || age == 6 {
                result = 24 + (age - 2) * 4
                cat.image = UIImage(named: "Prime")
            } else if age == 7 || age == 8 || age == 9 || age == 10 {
                result = 24 + (age - 2) * 4
                cat.image = UIImage(named: "Mature")
            } else if age == 11 || age == 12 || age == 13 || age == 14 {
                result = 24 + (age - 2) * 4
                cat.image = UIImage(named: "Senior")
            } else if age > 14 {
                result = 24 + (age - 2) * 4
                cat.image = UIImage(named: "Geriatric")
            }
            ageCatYears.text = "Your cat's age is \(result) Cat Years"
        }
        else {
            ageCatYears.text = "Please enter a valid number of human years"
        }
    }
    
}