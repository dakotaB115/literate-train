//
//  NewUser.swift
//  
//
//  Created by Dakota Brown on 9/18/18.
//

import UIKit

class NewUser: UIViewController {

    //outlets from new user scene
    @IBOutlet weak var Username: UITextField!
    @IBOutlet weak var Password: UITextField!
    
    //func that displays an error when conditions are not met
    func displayError(title: String, message: String) {
        let title = title
        let message = message
        let action = UIAlertAction(title: "Ok", style: .default) { _ in
            self.dismiss(animated: true)
        }
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(action)
        
        self.present(alert, animated: true)
    }
    
    
    @IBAction func SaveButtonTapped(_ sender: Any) {
        
        guard let Username = Username.text, !Username.isEmpty else {
            displayError(title: "Username Missing", message: "Please enter a username")
            return
        }
        
        guard let Password = Password.text, !Password.isEmpty else {
            displayError(title: "Password Missing", message: "Please enter a password")
            return
        }
        
        let newUser = User()
        newUser.password = Password
        newUser.userName = Username
        newUser.loggedIn = false
    
        UserManager.sharedInstance.addUser(newUser)
        self.performSegue(withIdentifier: "unwindToLogin", sender: self)
    }
}
