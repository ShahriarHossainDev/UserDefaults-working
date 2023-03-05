//
//  LoginViewController.swift
//  UserDefaults working
//
//  Created by Shishir_Mac on 5/3/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    let email = "shishir@gmail.com"
    let password = "123456"
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTestField: UITextField!
    @IBOutlet weak var loginButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func loginButtonAction(_ sender: UIButton) {
        if email == emailTextField.text! && password == passwordTestField.text! {
            UserDefaults.standard.set(emailTextField.text!, forKey: "email")
            let vc = storyboard?.instantiateViewController(withIdentifier: "HomeViewController")
            navigationController?.pushViewController(vc!, animated: true)
        } else {
            let alert = UIAlertController(title: "Alert", message: "Email or password is not matching", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
        }
    }
    
    
}
