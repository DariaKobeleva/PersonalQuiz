//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Дарья Кобелева on 12.02.2024.
//

import UIKit

final class ResultViewController: UIViewController {

    @IBOutlet var emojiResultLabel: UILabel!
    @IBOutlet var textResultLabel: UILabel!
    
    var answersChosen: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
//    private func getResult() -> Animal {
//        return Animal
//    }
    @IBAction func doneButtonAction(_ sender: Any) {
        dismiss(animated: true)
    }
    
    deinit{
        print("has been deal")
    }
}
