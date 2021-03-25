//
//  ViewController.swift
//  task2App
//
//  Created by yasudamasato on 2021/03/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var segmentedControl: UISegmentedControl!
    @IBOutlet private weak var resultLabel: UILabel!

    @IBAction func pressButton(_ sender: Any) {
        let number1: Double = Double(textField1.text!) ?? 0.0
        let number2: Double = Double(textField2.text!) ?? 0.0

        let result: Double
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            result = number1 + number2
        case 1:
            result = number1 - number2
        case 2:
            result = number1 * number2
        case 3:
            guard number2 != 0 else {
                resultLabel.text = "0以外を入力してください"
                return
            }

            result = number1 / number2
        default:
            fatalError("selectedSegmentIndex is invalid")
        }

        resultLabel.text = String(result)
    }
}

