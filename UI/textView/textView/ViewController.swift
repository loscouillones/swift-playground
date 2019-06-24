//
//  ViewController.swift
//  textView
//
//  Created by Nico on 24/06/2019.
//  Copyright © 2019 Nico. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        textField.delegate = self
    }

//    @IBAction func onTextFieldClick(_ sender: Any) {
//        print(textField.text)
//    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(textField.text)
    }
    
//    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    @IBAction func dismissedKeyboard(_ sender: Any) {
        textField.resignFirstResponder()
    }
    //        print(textField)
//        return false
//    }
}

