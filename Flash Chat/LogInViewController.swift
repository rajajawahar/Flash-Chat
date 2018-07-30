//
//  LogInViewController.swift
//  Flash Chat
//
//  This is the view controller where users login


import UIKit
import Firebase


class LogInViewController: UIViewController {
    
    //Textfields pre-linked with IBOutlets
    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func logInPressed(_ sender: AnyObject) {
        
        Auth.auth().signIn(withEmail: emailTextfield.text!, link: passwordTextfield.text!) { (data, error) in
            if (error != nil){
                print(error.debugDescription)
                return
            }
            self.performSegue(withIdentifier: "goToChat", sender: self)
        }
    }
    
    
    
    
}  
