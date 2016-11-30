//
//  FriendTableViewCell.swift
//  MoodTracker-starter
//
//  Created by Nikolas Burk on 02/11/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

protocol FriendsTableViewCellDelegate {
    func nextMood(mood: Mood) -> Mood
    func updateFriend(friend: Friend, mood: Mood)
}

class FriendTableViewCell: UITableViewCell {
    
    //var friendsTableViewController: FriendsTableViewController!
    
    var delegate: FriendsTableViewCellDelegate?
    var friend: Friend!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!

    @IBOutlet weak var moodButton: UIButton!

    @IBAction func moodButtonPressed(_ sender: Any) {
        
//        let newMood = friendsTableViewController.nextMood(mood: friend.mood) //go to next mood when button tapped
//        friendsTableViewController.updateFriend(friend: friend, mood: newMood) //tell controller + update model/view
        
        
        let newMood = delegate!.nextMood(mood: friend.mood) //go to next mood when button tapped
        
        delegate?.updateFriend(friend: friend, mood: newMood) //tell controller + update model/view
        
        
    }
}
