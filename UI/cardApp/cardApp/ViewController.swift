//
//  ViewController.swift
//  cardApp
//
//  Created by Nico on 24/06/2019.
//  Copyright © 2019 Nico. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onRedTouch(_ sender: Any) {
        label.text = "♦️"
    }
    
    @IBAction func onBlackTouch(_ sender: Any) {
        label.text = "♠"
    }
}

