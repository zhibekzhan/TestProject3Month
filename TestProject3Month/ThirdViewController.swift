//
//  ThirdViewController.swift
//  TestProject3Month
//
//  Created by mac-user on 25/4/23.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var emailTfield: UITextField!
    
    var label: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        emailTfield.text = label
    }
}
