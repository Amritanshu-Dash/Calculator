//
//  ViewController.swift
//  Calculator
//
//  Created by Amritanshu Dash on 30/06/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var valueShown: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let text = sender.titleLabel!.text!
        
        valueShown.text = input(text)
        
        
    }
}

