//
//  Game.swift
//  Cards
//
//  Created by Ivan on 07.02.2023.
//

import UIKit

class Game {
    var cardsCount = 0
    var cards = [Card]()
    
    func genetateCards() {
        var cards = [Card]()
        for _ in 0...cardsCount {
            let randomElement = (type: CardType.allCases.randomElement()!, color: CardColor.allCases.randomElement()!)
            cards.append(randomElement)
        }
        self.cards = cards
    }
    
    func checkCards(_ firstCard: Card, _ secondCard: Card) -> Bool {
        if firstCard == secondCard {
            return true
        }
        return false
    }
}
