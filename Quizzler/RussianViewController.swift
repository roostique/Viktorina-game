//
//  RussianViewController.swift
//  Yay or Nay
//
//  Created by Rustem Supayev on 18/10/2019.
//  Copyright © 2019 Zeebagzo Lab. All rights reserved.
//

import UIKit
import AVFoundation
import AudioToolbox

class RussianViewController: UIViewController {

    @IBAction func backButton(_ sender: UIButton) {
        updateUI()
    }
    
    @IBOutlet weak var AskBtn: UIButton!
    @IBOutlet weak var RestartBtn: UIButton!
    @IBOutlet weak var FalseBtn: UIButton!
    @IBOutlet weak var TrueBtn: UIButton!
    @IBOutlet weak var totalScore: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!

    
    //Declare variables
    
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    var score : Int = 0
    var shuffleQuestions = QuestionBankRussian().list.shuffled().prefix(10)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //The action gets called when either the true or false button is pressed.
    @IBAction func answerPressed(_ sender: UIButton) {
        
        let correctAnswer = shuffleQuestions[questionNumber].answer
        let correctAnswerDescription = shuffleQuestions[questionNumber].answerDescription
        
        let alertCorrect = UIAlertController(title: "Верно!", message: correctAnswerDescription, preferredStyle: .alert)
        let alertWrong = UIAlertController(title: "Неверно!", message: correctAnswerDescription, preferredStyle: .alert)
        
        
        let nextQuestionBtn = UIAlertAction(title: "ok", style: .default, handler: { UIAlertAction in
            self.nextQuestion()
        })
        
        alertCorrect.addAction(nextQuestionBtn)
        alertWrong.addAction(nextQuestionBtn)
        

        if sender.tag == 1 {
            pickedAnswer = true
        }
            
        else if sender.tag == 2 {
            pickedAnswer = false
        }

        
        if correctAnswer == pickedAnswer {
            
            sender.pulsate()
            present(alertCorrect, animated: true, completion: nil)
            
            score = score + 1
        }
            
        else {
            
            sender.shake()
            present(alertWrong, animated: true, completion: nil)
        }
        
        questionNumber = questionNumber + 1
        
        updateUI()
        
    }
    
    //Method that updates all the views on screen (progress bar, score label, etc)
    func updateUI() {
        
        RestartBtn.isHidden = true
        TrueBtn.isHidden = false
        FalseBtn.isHidden = false
        AskBtn.isHidden = false
        
        progressBar.frame.size.width = (view.frame.size.width / 10) * CGFloat(questionNumber)
        
        progressLabel.text = String(questionNumber) + "/10"
        
        nextQuestion()
    }
    
    //Method will update the question text and check if we reached the end.
    func nextQuestion() {
        
        if questionNumber <= 9 {
            questionLabel.text = shuffleQuestions[questionNumber].questionText
        }
        else {
            
            totalScore.text = "Total score: " + String(score)
            
            TrueBtn.isHidden = true
            FalseBtn.isHidden = true
            AskBtn.isHidden = true
            RestartBtn.isHidden = false
           
        }
        
    }
    
    
    
    // Function allowing user ask help from friends.
    @IBAction func askFriend(_ sender: Any) {
        
        
        let activityVC = UIActivityViewController(activityItems: [questionLabel.text! + "Правда или ложь?"], applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = self.view
        
        self.present(activityVC, animated: true, completion: nil)
        
    }
    
    
    @IBAction func RestartAction(_ sender: UIButton) {
        
        startOver()
    }
    
    
    //This method will wipe the board clean, so that users can retake the quiz.
    func startOver() {
        
        super.viewDidLoad()
        totalScore.text = ""
        questionNumber = 0
        score = 0
        
        updateUI()
        
    }
    
    
}
