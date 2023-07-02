//
//  ViewController.swift
//  Counter
//
//  Created by Дмитрий Лещук on 02.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var countButton: UIButton!
    
    
    @IBAction func countLabelChange(_ sender: Any) {
        if let text = countLabel.text {
            let separetedText: Array = text.components(separatedBy: " ")
            var valueToCount: Int = Int(separetedText.last!) ?? 0
            valueToCount += 1
            countLabel.text = "Значение счетчика: \(String(valueToCount))"
            print(valueToCount)
        } else {
            print("Error! No Value")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
