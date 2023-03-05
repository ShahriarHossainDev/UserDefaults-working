//
//  HomeViewController.swift
//  UserDefaults working
//
//  Created by Shishir_Mac on 5/3/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    @IBOutlet weak var bluetoothSwitch: UISwitch!
    
    @IBOutlet weak var logoutButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = UserDefaults.standard
        
        if (defaults.object(forKey: "SwitchState") != nil) {
            bluetoothSwitch.isOn = defaults.bool(forKey: "SwitchState")
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func logoutButtonAction(_ sender: UIButton) {
        UserDefaults.standard.removeObject(forKey: "email")
        let vc = storyboard?.instantiateViewController(withIdentifier: "LoginViewController")
        let navVC = UINavigationController(rootViewController: vc!)
        let share = UIApplication.shared.delegate as? AppDelegate
        share?.window?.rootViewController = navVC
        share?.window?.makeKeyAndVisible()
    }
    
    @IBAction func saveSwitchState(_ sender: Any) {
        let defaults = UserDefaults.standard
        
        if bluetoothSwitch.isOn {
            defaults.set(true, forKey: "SwitchState")
        } else {
            defaults.set(false, forKey: "SwitchState")
        }
    }
}
