//
//  FriendsTableViewController.swift
//  MoodTracker-starter
//
//  Created by Nikolas Burk on 02/11/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class FriendsTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    static let happyString = "Clap along if you feel like a room without a roof"
    static let mediumString = "We don't give a #$%@"
    static let angryString = "Why you gotta fight with me at Cheesecake!!!"
    let friendArray = [
        Friend(name: "Marq", mood: .angry),
        Friend(name: "Chandan", mood: .happy),
        Friend(name: "Corey", mood: .medium),
        Friend(name: "Jose", mood: .happy),
        Friend(name: "Sam", mood: .medium),
        Friend(name: "Nikolas", mood: .angry),
        Friend(name: "Drake", mood: .angry)
    ]
    
    func updateMood(mood: Mood) {
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendTableViewCell") as! FriendTableViewCell
        let friend = friendArray[indexPath.row]
        cell.nameLabel.text = friend.name
        
        switch friend.mood {
        case .happy:
            cell.descriptionLabel.text = FriendsTableViewController.happyString
        case .medium:
            cell.descriptionLabel.text = FriendsTableViewController.mediumString
        case .angry:
            cell.descriptionLabel.text = FriendsTableViewController.angryString
        }
        
        cell.moodButton.setTitle(friend.mood.rawValue, for: .normal)
        
        return cell
    }
    
    
}
