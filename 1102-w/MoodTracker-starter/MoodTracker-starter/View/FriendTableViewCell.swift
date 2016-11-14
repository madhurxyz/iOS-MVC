//
//  FriendTableViewCell.swift
//  MoodTracker-starter
//
//  Created by Nikolas Burk on 02/11/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class FriendTableViewCell: UITableViewCell {
    
    var friendsTableViewController: FriendsTableViewController!
    var friend: Friend!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!

    @IBOutlet weak var moodButton: UIButton!

    @IBAction func moodButtonPressed(_ sender: Any) {
        
        let newMood = friendsTableViewController.nextMood(mood: friend.mood) //go to next mood when button tapped
        friendsTableViewController.updateFriend(friend: friend, mood: newMood) //tell controller + update model/view
        
        
    }
}
