//
//  ResultViewController.swift
//  Rock Paper Scissors
//
//  Created by Sam Meech-Ward on 2017-07-21.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var resultText: String?
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        resultLabel.text = resultText;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
