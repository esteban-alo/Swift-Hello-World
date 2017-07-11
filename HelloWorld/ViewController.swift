//
//  ViewController.swift
//  HelloWorld
//
//  Created by Esteban Rodríguez Alonso on 6/07/17.
//  Copyright © 2017 Esteban Rodríguez Alonso. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var lblGreetUser: UILabel!
    @IBOutlet weak var txtUserName: UITextField!    
    @IBOutlet weak var lblWelcomeMessage: UILabel!

    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor(red: 0.4, green: 0.5, blue: 0.8, alpha: 1.0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        txtUserName.delegate = self
    }

    @IBAction func btnGreet(_ sender: UIButton) {
        let greetText = NSLocalizedString("Hello", comment: "")
        let userName = self.txtUserName.text!
        self.lblGreetUser.text = greetText + " " + userName
        self.lblGreetUser.isHidden = false
    }
    
    @IBAction func btnClearText(_ sender: UIButton) {
        self.clearGreet()
    }
    
    @IBAction func btnInformation(_ sender: UIButton) {
        let alertController : UIAlertController = UIAlertController(title: "Hello World",
                                                                message: "Using Swift 3. \n Esteban_Alo",
                                                                preferredStyle: .alert)
        
        let okAction : UIAlertAction = UIAlertAction(title: "Aceptar",
                                                     style: .default,
                                                     handler: nil)
        
        alertController.addAction(okAction)
        
        present(alertController, animated: true, completion: nil)
    }
    
    func clearGreet() {
        self.lblGreetUser.isHidden = true
        self.txtUserName.text = ""
    }
    
    func textFieldShouldReturn(_ txtUserName: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}
