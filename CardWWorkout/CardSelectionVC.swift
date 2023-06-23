//
//  CardSelectionVV.swift
//  CardWWorkout
//
//  Created by James Best on 23/06/2023.
//

import UIKit

class CardSelectionVV: UIViewController {
    //@IBOutlet Give access to the object in code
    @IBOutlet var CardImageView: UIImageView!
    
    // not needed as we now have outlet collection
//    @IBOutlet var restartButton: UIButton!
//    @IBOutlet var rulesButton: UIButton!
//    @IBOutlet var stopButton: UIButton!
    
    @IBOutlet var Buttons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // border radius can only be set programically
        // This is quite repetative. Use OutletCollection instead
        // stopButton.layer.cornerRadius = 8
        // restartButton.layer.cornerRadius = 8
        // rulesButton.layer.cornerRadius = 8
        for button in Buttons {
            button.layer.cornerRadius = 8
        }
    }
    
    //@IBAction allows you to do something
    @IBAction func restartButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func rulesButtonTapped(_ sender: UIButton) {
    }
}
