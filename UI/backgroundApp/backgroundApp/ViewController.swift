//
//  ViewController.swift
//  backgroundApp
//
//  Created by Nico on 21/06/2019.
//  Copyright © 2019 Nico. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var activity: UIActivityIndicatorView!
    @IBOutlet weak var progress: UIProgressView!
    
    @IBOutlet weak var stepper: UIStepper!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func `switch`(_ sender: UISwitch) {
        if !sender.isOn {
            activity.stopAnimating()
        } else {
            activity.startAnimating()
        }
    }
    
    @IBAction func onSegmentChange(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            self.view.backgroundColor = UIColor.red
        case 1:
            self.view.backgroundColor = UIColor.green
        case 2:
            self.view.backgroundColor = UIColor.blue
        case 3:
            self.view.backgroundColor = UIColor.orange
        default:
            break
        }
    }
    
    @IBAction func onStepperChange(_ sender: UIStepper) {
        progress.setProgress(Float(stepper!.value), animated: false)
    }
}

