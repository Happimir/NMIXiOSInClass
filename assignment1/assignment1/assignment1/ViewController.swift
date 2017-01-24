//
//  ViewController.swift
//  assignment1
//
//  Created by Michael Kovalsky on 1/17/17.
//  Copyright © 2017 Emuel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var sLS1 : [String] = ["beach.jpg", "butterfly.jpg", "bigboy.jpg", "tree.jpg"];
    var sLS2 : [String] = ["dino1.jpg", "dino2.jpg", "dino3.jpg", "mamut.jpg"];
    
    var myClass : ViewControllerTwo! = ViewControllerTwo();
    
    //Note to self, look at that SO answer. Also note how
    //the storyboard actually did the segues for you,
    //thus as we had it originally, these buttons are 
    //pointless.
    @IBAction func unifiedLogic(button: UIButton) {
        self.performSegue(withIdentifier: "slideShow", sender: button)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let passedPic = segue.destination as! ViewControllerTwo
        
        if let button = sender as? UIButton {
            if button.tag == 1 {
                passedPic.picsChosen = sLS1
            } else if button.tag == 2 {
                passedPic.picsChosen = sLS2
            }
        }
    }
}



