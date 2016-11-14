//
//  FriendsTableViewController.swift
//  MoodTracker-starter
//
//  Created by Nikolas Burk on 02/11/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class FriendsTableViewController: UITableViewController {
    
    @IBAction func addButton(segue: UIStoryboardSegue) {
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    static let happyString = "Clap along if you feel like a room without a roof!"
    static let mediumString = "I dont %@#$ w/ youuuuuuu!"
    static let angryString = "Why you gotta fight with me at Cheesecake!!!"
    var friendArray = [Friend]() {
        didSet {
            tableView.reloadData()
        }
    }
    
    func nextMood(mood: Mood) -> Mood {
        switch mood {
        case .happy: return .angry
        case .medium: return .happy
        case .angry: return .medium
        }
    }

    func updateFriend(friend: Friend, mood: Mood) {
        friend.mood = mood //update model
        tableView.reloadData() //update view
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendTableViewCell") as! FriendTableViewCell
        let friend = friendArray[indexPath.row]
        
        cell.friend = friend //populate friend in cell with friend in controller
        cell.friendsTableViewController = self //assign current view controller as the controller
        
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
