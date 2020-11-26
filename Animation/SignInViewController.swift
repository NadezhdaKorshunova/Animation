//
//  SignInViewController.swift
//  Animation
//
//  Created by user on 26/11/2020.
//

import UIKit

class SignInViewController: UIViewController {
    
    
    @IBOutlet weak var logotype: UIImageView!
    @IBOutlet weak var appNameLabel: UILabel!
    @IBOutlet weak var inputLogin: UITextField!
    @IBOutlet weak var inputPassword: UITextField!
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var passLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputLogin.clipsToBounds = true
        inputLogin.layer.cornerRadius = 20
        
        inputPassword.clipsToBounds = true
        inputPassword.layer.cornerRadius = 20
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        inputLogin.center.x -= view.bounds.width
        inputPassword.center.x += view.bounds.width
        loginLabel.center.x -= view.bounds.width
        passLabel.center.x += view.bounds.width
        appNameLabel.center.y -= view.bounds.height
        logotype.center.y -= view.bounds.height
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1.0) {
            self.inputLogin.center.x += self.view.bounds.width
            self.inputPassword.center.x -= self.view.bounds.width
            self.loginLabel.center.x += self.view.bounds.width
            self.passLabel.center.x -= self.view.bounds.width
            self.appNameLabel.center.y += self.view.bounds.height
            self.logotype.center.y += self.view.bounds.height
        }
    }
    
    
    
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
