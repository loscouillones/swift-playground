//
//  ViewController.swift
//  firstApp
//
//  Created by Nico on 21/06/2019.
//  Copyright © 2019 Nico. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label99: UILabel!
    @IBOutlet weak var labelAge: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        label99.text = "DTC"
    }


    @IBAction func onClick(_ sender: Any) {
        print("click!")
    }
}

