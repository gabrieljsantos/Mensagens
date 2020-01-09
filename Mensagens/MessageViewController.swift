//
//  ViewController.swift
//  Mensagens
//
//  Copyright © 2017 Eric Brito. All rights reserved.
//

import UIKit

class MessageViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        message = Message()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as! MessageColorViewController
        viewController.message = message
    }
        
}

extension MessageViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        message.text = textField.text!
        lbMessage.text = textField.text!
        //faz desaparecer o teclado depois de clicar no botao confirmar
        textField.resignFirstResponder()
        return true
    }
}

extension MessageViewController: ColorPickerDelegate {
    func applyColor(color: UIColor) {
        lbMessage.textColor = color
        message.textColor = color
    }
}

