//
//  ViewController.swift
//  PlayingCard
//
//  Created by Ankur Oberoi on 11/25/17.
//  Copyright © 2017 Ankur Oberoi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var deck = PlayingCardDeck()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        for _ in 1...10 {
            if let card = deck.draw() {
                print("\(card)")
            }
        }
    }

}
