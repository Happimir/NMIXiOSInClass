//
//  ViewController.swift
//  Outlets
//
//  Created by Michael Kovalsky on 1/12/17.
//  Copyright © 2017 Emuel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    
    @IBOutlet weak var myImage : UIImageView!
    
    @IBAction func btnOne() {
        givePic(whichPic: "bigboy")
    }
    
    @IBAction func btnTwo() {
        givePic(whichPic: "butterfly")
    }
    
    @IBAction func btnThree() {
        givePic(whichPic: "beach")
    }

    func givePic(whichPic: String){
        let chosenImage = UIImage(named: whichPic)
        myImage.image = chosenImage
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        givePic(whichPic: "tree")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

