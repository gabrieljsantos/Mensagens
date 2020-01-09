//
//  BaseViewController.swift
//  Mensagens
//
//  Created by Gabriel Jesus Santos  on 07/01/20.
//  Copyright © 2020 Eric Brito. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    @IBOutlet weak var lbMessage: UILabel!
    
    var message: Message!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func changeColor(_ sender: UIButton) {
            if let reference = self as? ColorPickerDelegate {
            let colorPicker = storyboard?.instantiateViewController(withIdentifier: "ColorPickerViewController") as! ColorPickerViewController
            //a linha abaixo faz com que a tela de colorpickerviewcontroller seja apresentada sobre a tela que esta chamando-a
            colorPicker.modalPresentationStyle = .overCurrentContext
            colorPicker.delegate = reference
            present(colorPicker, animated: true, completion: nil)
        }
    }
}
