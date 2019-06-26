//
//  UsersTableCellViewControllerTableViewCell.swift
//  userList
//
//  Created by Nico on 26/06/2019.
//  Copyright © 2019 Nico. All rights reserved.
//

import UIKit

class UsersTableCellViewControllerTableViewCell: UITableViewCell {

    var user: UserProfile! {
        didSet{
            self.updateUI()
        }
    }
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateUI() {
        if let user = user {
            nameLabel.text = "\(user.name) \(user.lastName)"
            emailLabel?.text = user.email
            typeLabel.text = user.isTrainer ? "Formateur" : "Apprenant"
        }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }


}
