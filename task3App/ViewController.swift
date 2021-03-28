//
//  ViewController.swift
//  task3App
//
//  Created by yasudamasato on 2021/03/27.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var invertSwitch1: UISwitch!
    @IBOutlet private weak var invertSwitch2: UISwitch!
    @IBOutlet private weak var label1: UILabel!
    @IBOutlet private weak var label2: UILabel!
    @IBOutlet private weak var resultLabel: UILabel!

    @IBAction func didTapButton(_ sender: Any) {
        let number1 = Int(textField1.text!) ?? 0
        let number2 = Int(textField2.text!) ?? 0

        let signedNumber1: Int
        if invertSwitch1.isOn {
            signedNumber1 = -number1
        }else{
            signedNumber1 = number1
        }
        label1.text = String(number1)

        let signedNumber2: Int
        if invertSwitch2.isOn {
            signedNumber2 = -number1
        }else{
            signedNumber2 = number1
        }
        label2.text = String(number2)

        label1.text = String(signedNumber1)
        label2.text = String(signedNumber2)

        let result = signedNumber1 + signedNumber2

        resultLabel.text = String(result)
    }
}

