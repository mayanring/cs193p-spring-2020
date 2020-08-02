//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Ryan Ming on 2020-08-02.
//  Copyright © 2020 Ryan Ming. All rights reserved.
//

import SwiftUI

// why class instead of struct?
// classes are easier to share since they live in the heap
// supports lots of views being able to point to the same class instance

class EmojiMemoryGame {
    private var game: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
        
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: [String] = ["👻", "🎃", "🧟‍♂️", "🧛🏻‍♂️", "🦇"]
        let numberOfPairs = Int.random(in: 2...5)
        return MemoryGame<String>(numberOfPairsOfCards: numberOfPairs) { pairIndex in
            return emojis[pairIndex]
        }
    }
        
    
    // MARK: - Access to the Model
    
    var cards: [MemoryGame<String>.Card] {
        game.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        game.choose(card: card)
    }
}
