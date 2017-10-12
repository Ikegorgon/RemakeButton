//
//  ViewController.swift
//  RemakeButton
//
//  Created by Lamb, Isaac on 10/10/17.
//  Copyright © 2017 Lamb, Isaac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var Button1: UIButton!
    var int = 0
    @IBAction func Color (_ sender: UIButton) {
        let color = RandColor()
        int += 1
        if (int % 2 == 1) {
            Button1.backgroundColor = .green
        } else {
            Button1.backgroundColor = .purple
        }
        view.backgroundColor = color
        Button1.titleLabel?.textColor = .blue
        Button2.titleLabel?.textColor = .white
        Button2.backgroundColor = color
        Label.textColor = color
    }
    func RandColor() -> UIColor {
        let rand :UIColor
        let redValue : CGFloat = CGFloat (Double (arc4random_uniform(256)) / 255.00)
        let greenValue :CGFloat = CGFloat (Double (arc4random_uniform(256)) / 255.00)
        let blueValue :CGFloat = CGFloat (Double (arc4random_uniform(256)) / 255.00)
        rand = UIColor (red : redValue, green : greenValue, blue : blueValue, alpha : CGFloat(1.0))
        return rand
    }
    
    @IBOutlet weak var Button2: UIButton!
    @IBAction func NoNo (_ sender: UIButton) {
        Button1.backgroundColor = .black
        Button2.backgroundColor = .black
        view.backgroundColor = .black
        Button1.titleLabel?.textColor = .black
        Button2.setTitleColor(.black, for: .normal)
        Label.textColor = .white
    }
    
    @IBOutlet weak var Purple: UIBarButtonItem!
    @IBOutlet weak var Reset: UIBarButtonItem!
    @IBOutlet weak var Random: UIBarButtonItem!
    @IBOutlet weak var Clear: UIBarButtonItem!
    @IBOutlet weak var Break: UIBarButtonItem!
    
    @IBAction func SetPurple (_ sender: UIBarButtonItem) {
        Button1.backgroundColor = .purple
        Button2.backgroundColor = .purple
        view.backgroundColor = .purple
        Button1.titleLabel?.textColor = .purple
        Button2.setTitleColor(.purple, for: .normal)
        Label.textColor = .purple
    }
    @IBAction func SetReset (_ sender: UIBarButtonItem) {
        Button1.backgroundColor = .white
        Button2.backgroundColor = .white
        view.backgroundColor = .white
        Button1.titleLabel?.textColor = .blue
        Button2.setTitleColor(.white, for: .normal)
        Label.textColor = .white
    }
    @IBAction func SetRandom (_ sender: UIBarButtonItem) {
        Button1.backgroundColor = RandColor()
        Button2.backgroundColor = RandColor()
        view.backgroundColor = RandColor()
        Button1.titleLabel?.textColor = RandColor()
        Button2.setTitleColor(RandColor(), for: .normal)
        Label.textColor = RandColor()
    }
    @IBAction func SetClear (_ sender: UIBarButtonItem) {
        Button1.backgroundColor = .white
        Button2.backgroundColor = .white
        view.backgroundColor = .white
        Button1.titleLabel?.textColor = .white
        Button2.setTitleColor(.white, for: .normal)
        Label.textColor = .white
    }
    var work = true
    @IBAction func SetBreak (_ sender: UIBarButtonItem) {
        if (work == true) {
            Button1.isEnabled = false
            Button2.isEnabled = false
            Button1.isEnabled = false
            Button2.isEnabled = false
            Label.isEnabled = false
            Purple.isEnabled = false
            Reset.isEnabled = false
            Random.isEnabled = false
            Clear.isEnabled = false
            work = false
        } else {
            Button1.isEnabled = true
            Button2.isEnabled = true
            Button1.isEnabled = true
            Button2.isEnabled = true
            Label.isEnabled = true
            Purple.isEnabled = true
            Reset.isEnabled = true
            Random.isEnabled = true
            Clear.isEnabled = true
            work = true
        }
        
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

