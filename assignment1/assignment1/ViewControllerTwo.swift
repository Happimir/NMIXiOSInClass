//
//  ViewControllerTwo.swift
//  assignment1
//
//  Created by Michael Kovalsky on 1/17/17.
//  Copyright © 2017 Emuel. All rights reserved.
//

import UIKit

class ViewControllerTwo: UIViewController {

    var timer : Timer!;
    var index : Int = 0;
    
    var picsChosen : [String] = [];
//    var picsChosen : [String] {
//        set(newData) {
//            for index in 0..<newData.count {
//                print("Index is: ", newData[index]);
//            }
//            self._picsChosen = newData;
//        } get {
//            return self._picsChosen;
//        }
//    }
    

    @IBOutlet weak var showImage : UIImageView!;
    
    @IBAction func previous() {
        if(timer != nil) {
            timer.invalidate();
        }
        
        index -= 1;
        show();
        
    }
    
    func autoShow() {
        index += 1;
        if(index > picsChosen.count - 1) {
            index = 0;
        }

        let displayPic = UIImage( named : picsChosen[index]);
        showImage.image = displayPic;

    }
    
    func show() {
        //let answer = (number % 2 == 0) ? "even" : "odd"
        //index = (index > picsChosen.count) ? 0 : index;
        if(index > picsChosen.count - 1) {
            index = 0;
        }
        if(index < 0) {
            index = picsChosen.count - 1;
        }
        
        let displayPic = UIImage( named : picsChosen[index]);
        showImage.image = displayPic;
    }
    
    @IBAction func next() {
        if(timer != nil) {
            timer.invalidate();
        }
        
        index += 1;
        show();
    }
    
    @IBAction func auto() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.autoShow), userInfo: nil, repeats: true);
    }
    
    override func viewDidLoad() {
        showImage.image = UIImage(named :picsChosen[0]);
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
