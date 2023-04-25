//
//  SecondViewController.swift
//  TestProject3Month
//
//  Created by mac-user on 25/4/23.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var usernameTextfield: UITextField!
    
    @IBOutlet weak var emailTextfield: UITextField!
    
    @IBOutlet weak var numberTextfield: UITextField!
    
    @IBOutlet weak var passwordTextfield: UITextField!
    
    private func isTextFieldFilled(textField: UITextField) -> Bool {
        guard let text = textField.text else {
            return false
        }
        if text.isEmpty{
            textField.layer.borderWidth = 3
            textField.layer.borderColor = UIColor.red.cgColor
            return false
        } else{
            textField.layer.borderWidth = 0
            return true
        }
    }
    
    @IBAction func isTextFilled(_ sender: UIButton) {
        if isTextFieldFilled(textField: usernameTextfield) && isTextFieldFilled(textField: emailTextfield) && isTextFieldFilled(textField: numberTextfield) && isTextFieldFilled(textField: passwordTextfield){
            let vc = self.storyboard?.instantiateViewController(identifier: "ThirdViewController") as! ThirdViewController
            vc.label = emailTextfield.text
            self.present(vc, animated: true)
            
            
        }
        
    }
    var parameter = false
    @IBAction func isSecureText(_ sender: Any) {
        passwordTextfield.isSecureTextEntry = parameter
        
        if parameter == false {
            parameter = true
        }else {
            parameter = false
        }
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
   // func isEntr
    

   

}
