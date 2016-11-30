//
//  TextFieldViewController.swift
//  delegate-challenge
//
//  Created by Nikolas Burk on 07/10/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class TextFieldViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textField: UITextField!
    var delegate: UITextFieldDelegate!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textField.delegate = self
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        self.textField.text = self.textField.text?.uppercased()
        print("uppercase: \(self.textField.text!)")
        return true
    }
    
}
