//
//  ViewController.swift
//  BenjaminWuApp
//
//  Created by Benjamin Wu on 1/25/20.
//  Copyright © 2020 Benjamin Wu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var textLabel: UILabel!
    
    var backgroundColor: UIColor!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        backgroundColor = view.backgroundColor
    }


    @IBAction func didTapButton(_ sender: Any) {
        print("Hello")
        textLabel.textColor = UIColor.orange
    }
    
    @IBAction func didTapViewButton(_ sender: Any) {
        view.backgroundColor = UIColor.white
    }
    
    @IBAction func didTapTextButton(_ sender: Any) {
        //textLabel.text = "Bye from Benjamin Wu "
        textLabel.text = textField.text
        textField.text = ""
        view.endEditing(true)
    }
    
    @IBAction func onResetGesture(_ sender: Any) {
        textLabel.text = "Hello from Benjamin Wu"
        view.backgroundColor = backgroundColor
        textLabel.textColor = UIColor.black
        
    }
}

