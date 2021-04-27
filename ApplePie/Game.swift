//
//  Game.swift
//  ApplePie
//
//  Created by Jamie Chen on 2021-04-26.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]
    var formattedWord: String {
        var guessedWord = ""
        
        for letter in word {
            guessedWord += guessedLetters.contains(letter) ? "\(letter)" : "_"
        }
        
        return guessedWord
    }
    
    mutating func playGuessed(letter: Character) {
        guessedLetters.append(letter)
        if !word.contains(letter) {
            incorrectMovesRemaining -= 1
        }
    }
}
