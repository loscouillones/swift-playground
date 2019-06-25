//
//  ViewController.swift
//  pickerView
//
//  Created by Nico on 25/06/2019.
//  Copyright © 2019 Nico. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var pickerView: UIPickerView!
    
    let villes = ["Paris", "Marseille", "Clermont", "Bagneux", "Neuilly", "Saint-Ouen"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        pickerView.dataSource = self as UIPickerViewDataSource
        pickerView.delegate = self as UIPickerViewDelegate
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return villes.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return villes[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(villes[row])
    }
}

