//
//  ViewController.swift
//  SDKsDemo
//
//  Created by Miguel Muñoz on 24/11/22.
//

import UIKit
import NutritionIASDK

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showProfile(){
        NutritionSDK.sharedInstance.showProfile()
    }
    
    @IBAction func showWeeklyMenu(){
        NutritionSDK.sharedInstance.showNutritionModule()
    }

}

