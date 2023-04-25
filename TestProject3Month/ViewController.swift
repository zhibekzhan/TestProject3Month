//
//  ViewController.swift
//  TestProject3Month
//
//  Created by mac-user on 25/4/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var emailTextfield: UITextField!
    
    @IBOutlet weak var passwordTextfield: UITextField!
    
    private func isTextFieldFilled(textField : UITextField) -> Bool {
            guard let text = textField.text else { return false }
            if text.isEmpty {
                textField.layer.borderWidth = 3
                textField.layer.borderColor = UIColor.red.cgColor
                return false
            }else{
                textField.layer.borderWidth = 0
                return true
            }
        }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorinit()
    }

    @IBAction func loginActionButton(_ sender: Any) {
        
        if isTextFieldFilled(textField: emailTextfield) && isTextFieldFilled(textField: passwordTextfield) {
            
            print("success")
        }
        
        
    }
    func colorinit(){
        loginButton.layer.cornerRadius = 20
        
    }
    
//    @IBAction func createNow(_ sender: Any) {
//        let vc = SecondViewController()
//        self.navigationController?.pushViewController(vc, animated: true)
//    }
    
//    @IBAction func forgotPassword(_ sender: Any) {
//        let vc1 = ThirdViewController()
//        self.navigationController?.pushViewController(vc1, animated: true)
//    }
    
    var flag = true
    @IBAction func eyeAction(_ sender: Any) {
        passwordTextfield.isSecureTextEntry = flag
        flag == true ? (flag = false) : (flag = true)
    }
    
    
    
}

