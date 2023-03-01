//
//  ViewController.swift
//  eCommerceApp
//
//  Created by SHYNU MARY VARGHESE on 2023-02-24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak private var userNameTextField: UITextField!
    @IBOutlet weak private var passwordTextField: UITextField!
    var loginviewmodel = LoginViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        userNameTextField.becomeFirstResponder();
    }
    @IBAction func loginClicked(_ sender: UIButton){
        //checking userNameTextField
        guard let email = userNameTextField.text else{
            return
        }
        guard let password = passwordTextField.text else{
            return
        }
        if email.isEmpty  {
            print("Email is missing")
            //calling the function
            displayAlert(title: "Email is required", message: "Enter valid username to the specific field")
            return
        }
        if password.isEmpty{
            print("Password is missing")
            displayAlert(title: "password is required", message: "Enter valid password")
            return
        }
       if loginviewmodel.emailIsValid(email: email) && loginviewmodel.passwordRange(password: password)
          
        {
            print("success")
           displayAlert(title: "Success", message: "LogIn Successfull")
        }
       
        
        
    }
    //MARK:- defined the function for alertcontroller
   private func displayAlert(title:String,message:String){
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction.init(title: "ok", style: .default){(action) in
            print("Ok button clicked")
        }
        let cancelAction = UIAlertAction.init(title: "cancel", style: .cancel){
            (action) in print("Cancel button clicked")
        }
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        self.present(alertController, animated: true)
        
    }

}
//MARK:- TextFieldDelegate function
extension ViewController : UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

