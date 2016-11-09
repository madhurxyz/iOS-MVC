//
//  FriendTableViewCell.swift
//  MoodTracker-starter
//
//  Created by Nikolas Burk on 02/11/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class FriendTableViewCell: UITableViewCell {
    

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!

    @IBOutlet weak var moodButton: UIButton!

    @IBAction func moodButtonPressed(_ sender: Any) {
        
        switch moodButton.title(for: .normal) {
        case "😁"?:
            moodButton.setTitle("😑", for: .normal)
            descriptionLabel.text = FriendsTableViewController.mediumString
        case "😑"?:
            moodButton.setTitle("😡", for: .normal)
            descriptionLabel.text = FriendsTableViewController.angryString
        case "😡"?:
            moodButton.setTitle("😁", for: .normal)
            descriptionLabel.text = FriendsTableViewController.happyString
        default: break
        }
        
    }
}

