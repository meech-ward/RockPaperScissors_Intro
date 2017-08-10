//
//  ViewController.swift
//  Rock Paper Scissors
//
//  Created by Sam Meech-Ward on 2017-07-21.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var mySign: String?
    var computerSign: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController = segue.destination as! ResultViewController
        
        if let mySign = mySign, let computerSign = computerSign {
            let winner = determineWinner(me: mySign, computer: computerSign)
            let resultText = result(winner: winner, me: mySign, computer: computerSign)
            
            print(resultText)
            
            resultViewController.resultText = resultText
        }
        
    }
    
    func randomSign() -> String {
        let randomNumber = arc4random_uniform(3)
        
        var computerSign = ""
        
        if (randomNumber == 0) {
            computerSign = "✋"
        } else if (randomNumber == 1) {
            computerSign = "👊"
        } else if (randomNumber == 2) {
            computerSign = "✌️"
        }
        
        return computerSign
    }
    
    func determineWinner(me: String, computer: String) -> Int {
        var winner = 0
        
        if (me == "✋" && computer == "👊") {
            winner = 1
        } else if (me == "✋" && computer == "✌️") {
            winner = 2
        } else if (me == "✌️" && computer == "👊") {
            winner = 2
        } else if (me == "✌️" && computer == "✋") {
            winner = 1
        } else if (me == "👊" && computer == "✌️") {
            winner = 1
        } else if (me == "👊" && computer == "✋") {
            winner = 2
        }
        
        return winner
    }
    
    func result(winner: Int, me: String, computer: String) -> String {
        var winnerString = ""
        
        if (winner == 0) {
            winnerString = "It's a 👔"
        } else if (winner == 1) {
            winnerString = "You Win!!!!!"
        } else if (winner == 2) {
            winnerString = "Computer Wins!!!!"
        }
        
        let result = "You: \(me), Computer: \(computer)\n\(winnerString)"
        
        print(result)
        
        return result
    }
    
    @IBAction func playPaper(_ sender: UIButton) {
        
        mySign = "✋"
        computerSign = randomSign()
        
        performSegue(withIdentifier: "result-view-controller", sender: self)
    }
    
    @IBAction func playRock(_ sender: Any) {
        
        mySign = "👊"
        computerSign = randomSign()
        
        performSegue(withIdentifier: "result-view-controller", sender: self)
    }
    
    @IBAction func playScissors(_ sender: Any) {
        
        mySign = "✌️"
        computerSign = randomSign()
        
        performSegue(withIdentifier: "result-view-controller", sender: self)
    }
}

