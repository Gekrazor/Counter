//
//  ViewController.swift
//  Counter
//
//  Created by Дмитрий Лещук on 02.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var historyTextView: UITextView!
    private let currentDateTime = Date()
    
    @IBAction func minusLabelCout(_ sender: Any) {
        if let text = countLabel.text {
            let separetedText: Array = text.components(separatedBy: " ")
            var valueToCount: Int = Int(separetedText.last!) ?? 0
            if valueToCount > 0 {
                valueToCount -= 1
                countLabel.text = "Значение счетчика: \(String(valueToCount))"
                historyTextView.text += "\n\(currentDateTime.formatted(date: .numeric, time: .standard)): значение изменено на -1"
                print(valueToCount)
            } else {
                historyTextView.text += "\n\(currentDateTime.formatted(date: .numeric, time: .standard)): попытка уменьшить значение счётчика ниже 0"
                return
            }
        } else {
            print("Error! No Value")
        }
    }
    
    @IBAction func countLabelChange(_ sender: Any) {
        if let text = countLabel.text {
            let separetedText: Array = text.components(separatedBy: " ")
            var valueToCount: Int = Int(separetedText.last!) ?? 0
            valueToCount += 1
            countLabel.text = "Значение счетчика: \(String(valueToCount))"
            historyTextView.text += "\n\(currentDateTime.formatted(date: .numeric, time: .standard)): значение изменено на +1"
            print(valueToCount)
        } else {
            print("Error! No Value")
        }
    }
    
    @IBAction func resetLabelText(_ sender: Any) {
        countLabel.text = "Значение счетчика: 0"
        historyTextView.text += "\n\(currentDateTime.formatted(date: .numeric, time: .standard)): значение сброшено"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resetButton.tintColor = .red
    }
}
