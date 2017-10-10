//
//  ViewController.swift
//  RemakeButton
//
//  Created by Lamb, Isaac on 10/10/17.
//  Copyright © 2017 Lamb, Isaac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Button1: UIButton!
    @IBAction func Color (_ sender: UIButton) {
        var int = 0
        let rand :UIColor
        let redValue : CGFloat = CGFloat (Double (arc4random_uniform(256)) / 255.00)
        let greenValue :CGFloat = CGFloat (Double (arc4random_uniform(256)) / 255.00)
        let blueValue :CGFloat = CGFloat (Double (arc4random_uniform(256)) / 255.00)
        rand = UIColor (red : redValue, green : greenValue, blue : blueValue, alpha : CGFloat(1.0))
        int += 1
        if (int % 2 == 1) {
            Button1.backgroundColor = .green
        } else {
            Button1.backgroundColor = .purple
        }
        view.backgroundColor = rand
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

