//
//  ViewController.swift
//  TapticCounter
//
//  Created by Joseph Ward on 22/09/18.
//  Copyright © 2018 Joethermal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var countNumber:Int = 0
    
    @IBOutlet weak var counterDisplay: UILabel!
    @IBOutlet weak var minusBut: UIButton!
    @IBOutlet weak var plusBut: UIButton!
    
    @IBAction func minusButton(_ sender: UIButton) {
        minusBut.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        minusBut.transform = CGAffineTransform.identity
        countNumber = countNumber - 1
        counterDisplay.text = String(countNumber)
        giveTapticFeedback()
    }
    @IBAction func plusButton(_ sender: UIButton) {
        countNumber = countNumber + 1
        counterDisplay.text = String(countNumber)
        giveTapticFeedback()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtons()
    }
    
    func giveTapticFeedback() {
        let generator = UIImpactFeedbackGenerator(style: .medium)
        generator.prepare()
        generator.impactOccurred()
    }
    
    func setupButtons() {
        minusBut.layer.cornerRadius = minusBut.frame.size.height/2
        minusBut.contentEdgeInsets = UIEdgeInsets(top: 0, left: 2, bottom: 10, right: 0);
        plusBut.layer.cornerRadius = minusBut.frame.size.height/2
        plusBut.contentEdgeInsets = UIEdgeInsets(top: 0, left: 2, bottom: 10, right: 0);
    }
    
    func animateButton(){
        
    }
    
    
 

}

