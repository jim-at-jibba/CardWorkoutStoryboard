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
    @IBOutlet var Buttons: [UIButton]!
    
    // not needed as we now have outlet collection
    // @IBOutlet var restartButton: UIButton!
    // @IBOutlet var rulesButton: UIButton!
    // @IBOutlet var stopButton: UIButton!
    
    var timer: Timer!
    var cards: [UIImage] = Deck.allValues
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startTimer()
        // border radius can only be set programically
        // This is quite repetative. Use OutletCollection instead
        // stopButton.layer.cornerRadius = 8
        // restartButton.layer.cornerRadius = 8
        // rulesButton.layer.cornerRadius = 8
//        for button in Buttons {
//            button.layer.cornerRadius = 8
//        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        // If you dont call this, you wont get all the functionality that apple has built for you
        super.viewWillDisappear(animated)
        timer.invalidate()
    }
   
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showRandomImage), userInfo: nil, repeats: true)
    }
    
    @objc func showRandomImage() {
        CardImageView.image = cards.randomElement() ?? UIImage(named: "AS")
    }
    //@IBAction allows you to do something
    @IBAction func restartButtonTapped(_ sender: UIButton) {
        timer.invalidate()
        startTimer()
    }
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
        timer.invalidate()
    }
}
