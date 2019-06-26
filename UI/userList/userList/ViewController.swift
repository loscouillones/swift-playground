//
//  ViewController.swift
//  userList
//
//  Created by Nico on 25/06/2019.
//  Copyright © 2019 Nico. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var users: Array<UserProfile> = []
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var trainerSwitch: UISwitch!
    @IBOutlet weak var ageSlider: UISlider!
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var addUserButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        ageLabel.text = String(Int(ageSlider.value.rounded()))
        // Do any additional setup after loading the view.
    }

    func updateAddUserEnabled() {
        print("lastName")
        if let firstName = firstNameField.text, let lastName = lastNameField.text {
        addUserButton.isEnabled = firstName.count > 0 && lastName.count > 0
        } else {
            addUserButton.isEnabled = false
        }
    }
    
    func showMessage(_ message: String) {
        let alert = UIAlertController(title: "Ooops", message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationViewController = segue.destination as? UsersTableViewController
        destinationViewController?.users = users
        destinationViewController?.title = "User List"
    }
    
    func clearTextFields() {
        firstNameField.text = ""
        lastNameField.text = ""
    }
    
    @IBAction func onUserList(_ sender: Any) {
    }
    
    @IBAction func onAgeChange(_ sender: UISlider) {
        let roundedValue = Int(sender.value.rounded())
        ageLabel.text = String(roundedValue)
    }
    
    @IBAction func onLastNameChange(_ sender: Any) {
        updateAddUserEnabled()
    }
    
    
    @IBAction func onFirstNameChange(_ sender: Any) {
        updateAddUserEnabled()
    }
    
    
    @IBAction func onAddUser(_ sender: Any) {
        let userToAdd = UserProfile(name: firstNameField.text!, lastName: lastNameField.text!, age: Int(ageSlider.value), isTrainer: trainerSwitch.isOn)
        
        if !users.contains(userToAdd) {
            users.append(userToAdd)
            clearTextFields()
        } else {
            showMessage("Cet utilisateur est déjà dans la base.")
        }
    }
}

