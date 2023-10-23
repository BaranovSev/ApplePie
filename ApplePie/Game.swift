//
//  Game.swift
//  ApplePie
//
//  Created by Stepan Baranov on 23.10.2023.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]
    var formattedWord: String {
        var guessedWord = ""
        for letter in word {
            if guessedLetters.contains(letter) {
                guessedWord += "\(letter)"
            } else {
                guessedWord += "_"
            }
        }
        return guessedWord
    }
    
    mutating func playerGuessed(leter: Character) {
        guessedLetters.append(leter)
        if !word.contains(leter) {
            incorrectMovesRemaining -= 1
        }
    }
}
