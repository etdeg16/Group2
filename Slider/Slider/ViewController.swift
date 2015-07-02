//
//  ViewController.swift
//  Slider
//
//  Created by Cluster 5 on 7/2/15.
//  Copyright (c) 2015 com.ethan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mySlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func mySliderAction(sender: UISlider) {
        print(sender.value)
        
    }

}

