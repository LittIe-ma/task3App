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

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didTapButton(_ sender: Any) {
        var number1 = Int(textField1.text!) ?? 0
        var number2 = Int(textField2.text!) ?? 0
        var result: Int

        if invertSwitch1.isOn == true {
            number1 *= -1
            label1.text = String(number1)
        }else{
            number1 *= 1
            label1.text = String(number1)
        }

        if invertSwitch2.isOn == true {
            number2 *= -1
            label2.text = String(number2)
        }else{
            number2 *= 1
            label2.text = String(number2)
        }

        label1.text = String(number1)
        label2.text = String(number2)

        result = number1 + number2

        resultLabel.text = String(result)
    }
}

