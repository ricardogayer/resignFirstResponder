//
//  ViewController.swift
//  Lynda
//
//  Created by Ricardo Gayer on 23/08/20.
//  Copyright © 2020 Ricardo Gayer. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var primeiroNomeTextField: UITextField!
    @IBOutlet weak var sobreNomeTextField: UITextField!
    
    @IBAction func mostraNomeButton(_ sender: Any) {
        changeLabel()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nomeLabel.text = "Hello!"
        primeiroNomeTextField.becomeFirstResponder()
        primeiroNomeTextField.delegate = self
        sobreNomeTextField.delegate = self
    }
    
    func changeLabel() {
        nomeLabel.text = "Hello \(primeiroNomeTextField.text!) \(sobreNomeTextField.text!)!"
        view.endEditing(true)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
    
}

