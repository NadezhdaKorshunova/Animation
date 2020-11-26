//
//  AnimateViewController.swift
//  Animation
//
//  Created by user on 26/11/2020.
//

import UIKit

class AnimateViewController: UIViewController {
    
    
    @IBOutlet weak var firstIcon: UIImageView!
    @IBOutlet weak var firstLabel: UILabel!
    
    @IBOutlet weak var logotype: UIImageView!
    @IBOutlet weak var appNameLabel: UILabel!
    @IBOutlet weak var inputLogin: UITextField!
    @IBOutlet weak var inputPassword: UITextField!
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var passLabel: UILabel!
    @IBOutlet weak var signInButton: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputLogin.clipsToBounds = true
        inputLogin.layer.cornerRadius = 20
        
        inputPassword.clipsToBounds = true
        inputPassword.layer.cornerRadius = 20
    }
    
    override func viewWillAppear(_ animated: Bool) {
        inputLogin.center.y -= view.bounds.height
        inputPassword.center.y -= view.bounds.height
        loginLabel.center.y -= view.bounds.height
        passLabel.center.y -= view.bounds.height
        appNameLabel.center.y -= view.bounds.height
        logotype.center.y -= view.bounds.height
        signInButton.center.y -= view.bounds.height
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1.0, delay: 3.0) {
            self.firstIcon.center.y -= self.view.bounds.height
            self.firstLabel.center.y -= self.view.bounds.height
            
            self.inputLogin.center.y += self.view.bounds.height
            self.inputPassword.center.y += self.view.bounds.height
            self.loginLabel.center.y += self.view.bounds.height
            self.passLabel.center.y += self.view.bounds.height
            self.appNameLabel.center.y += self.view.bounds.height
            self.logotype.center.y += self.view.bounds.height
            self.signInButton.center.y += self.view.bounds.height
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
