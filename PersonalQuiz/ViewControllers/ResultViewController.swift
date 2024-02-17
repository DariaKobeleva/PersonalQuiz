//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Дарья Кобелева on 12.02.2024.
//

import UIKit

final class ResultViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func doneButtonAction(_ sender: Any) {
        dismiss(animated: true)
    }
    
    deinit{
        print("has been deal")
    }
}
