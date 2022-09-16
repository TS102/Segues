//
//  ViewController.swift
//  login
//
//  Created by Tyler Sun on 9/15/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var userName: UITextField!
    @IBOutlet var forgotUser: UIButton!
    @IBOutlet var forgotPassword: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = userName.text
        guard let sender = sender as? UIButton else {return}

        if sender == forgotPassword {
            segue.destination.navigationItem.title = "Forgot Password"
        }else if sender == forgotUser {
            segue.destination.navigationItem.title = "Forgot username"
        } else {
            segue.destination.navigationItem.title = userName.text
        }
    }
    
    @IBAction func login(_ sender: Any) {
        performSegue(withIdentifier: "login", sender: sender)
    }
    
    @IBAction func forgotUserNameAction(_ sender: Any) {
        performSegue(withIdentifier: "login", sender: sender)
    }
    
    @IBAction func forgotPasswordAction(_ sender: Any) {
        performSegue(withIdentifier: "login", sender: sender)
    }
    
    
}

