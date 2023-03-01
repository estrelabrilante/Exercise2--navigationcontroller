//
//  LoginViewModel.swift
//  eCommerceApp
//
//  Created by SHYNU MARY VARGHESE on 2023-02-25.
//

import Foundation
class LoginViewModel {
    func emailIsValid(email:String)-> Bool{
        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
        let emailIsValid = emailPredicate.evaluate(with: email)
        return emailIsValid
    }
    func passwordRange(password:String) -> Bool
    {
        //Minimum 8 characters at least 1 Uppercase Alphabet, 1 Lowercase Alphabet, 1 Number and 1 Special Character:
//        let passwordFormat = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)[a-zA-Z\\d]{8,}$"
        
        let passwordFormat =  "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let passwordPredicate = NSPredicate(format:"SELF MATCHES %@", passwordFormat)
        let passwordIsValid = passwordPredicate.evaluate(with: password)
        return passwordIsValid
        
    }
}
