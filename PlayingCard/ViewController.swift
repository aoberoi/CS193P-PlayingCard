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
    
    @IBOutlet weak var playingCardView: PlayingCardView! {
        didSet {
            let swipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(nextCard))
            swipeGesture.direction = [.left, .right]
            playingCardView.addGestureRecognizer(swipeGesture)
        }
    }
    
    @objc func nextCard() {
        if let card = deck.draw() {
            playingCardView.rank = card.rank.order
            playingCardView.suit = card.suit.rawValue
        }
    }
    
    @IBAction func flipCard(_ sender: UITapGestureRecognizer) {
        switch sender.state {
        case .ended: playingCardView.isFaceUp = !playingCardView.isFaceUp
        default: break
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}
