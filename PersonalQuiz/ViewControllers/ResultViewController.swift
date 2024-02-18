//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Дарья Кобелева on 12.02.2024.
//

import UIKit

final class ResultViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var animalTypeLabel: UILabel!
    @IBOutlet var animalDefinitionLabel: UILabel!
    
    // MARK: - Public Properties
    var answersChosen: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: true)
        
        updateResult(answersChosen)
    }
    
    
    @IBAction func doneButtonAction(_ sender: Any) {
        dismiss(animated: true)
    }
    
    deinit{
        print("has been deal")
    }
    
    
    private func updateResult(_ answers: [Answer]) {
        var answerCounter: [Animal: Int] = [
            .cat: 0,
            .rabbit: 0,
            .turtle: 0,
            .dog: 0
        ]
        
        answers.forEach { answer in
            if let animalType = answerCounter[answer.animal] {
                answerCounter.updateValue(animalType + 1, forKey: answer.animal)
            }
        }
        
        let sortedFrequencyOfAnimals = answerCounter.max { $0.value < $1.value }
        
        guard let mostFrequentAnimal = sortedFrequencyOfAnimals?.key else {
            return
        }
        
        updateUI(with: mostFrequentAnimal)
    }
    
    private func updateUI(with animal: Animal) {
        animalTypeLabel.text = "Вы - \(animal.rawValue)"
        animalDefinitionLabel.text = animal.definition
    }
}
