//
//  ViewController.swift
//  sliders
//
//  Created by Michael Kovalsky on 1/24/17.
//  Copyright © 2017 Emuel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slyder : UISlider!
    @IBOutlet weak var slyderData : UILabel!
    @IBOutlet weak var smallBox : UIView!;
    
    @IBAction func tellMe(sender : AnyObject) {
        slyderData.text = "\(slyder.value)";
        
        //Constant value.
        let howBig = CGFloat(slyder.value * 10);
        smallBox.transform = CGAffineTransform(scaleX: howBig, y: howBig);
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

