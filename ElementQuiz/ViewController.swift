//
//  ViewController.swift
//  ElementQuiz
//
//  Created by Eugene on 19.10.21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    
    
    @IBAction func showAnswer(_ sender: Any) {
        answerLabel.text = elementList[currentElementIndex]
    }
    
    @IBAction func gotoNextElement(_ sender: Any) {
        currentElementIndex += 1
        if currentElementIndex >= elementList.count {
            currentElementIndex = 0
        }
        updateElement()
    }
    
    let elementList = ["Carbon", "Gold", "Chlorine", "Sodium"]
    var currentElementIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateElement()
    }

    func updateElement() {
        answerLabel.text = "?"
        let elementName = elementList[currentElementIndex]
        let image = UIImage(named: elementName)
        imageView.image = image
    }
    
}

