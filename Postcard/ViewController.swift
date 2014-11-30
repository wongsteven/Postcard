//
//  ViewController.swift
//  Postcard
//
//  Created by Steven W on 11/28/14.
//  Copyright (c) 2014 Steven W. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text =
            "[MESSAGE SENT]" +
            "\n" +
            enterNameTextField.text +
            ": \"" +
            enterMessageTextField.text +
            "\""
        messageLabel.textColor = UIColor.redColor()
        
        enterMessageTextField.text = ""
        enterNameTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent!", forState: UIControlState.Normal)
        mailButton.backgroundColor = UIColor.blueColor()
    }


}

// testing 123 - delete