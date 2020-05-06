//
//  PlayData.swift
//  unit-tests
//
//  Created by Robbie Gay on 5/6/20.
//  Copyright © 2020 Robbie Gay. All rights reserved.
//

import Foundation

class PlayData {
    var allWords = [String]()
    var wordCounts = [String: Int]()
    
    init() {
        if let path = Bundle.main.path(forResource: "plays", ofType: "txt") {
            if let plays = try? String(contentsOfFile: path) {
                allWords = plays.components(separatedBy: CharacterSet.alphanumerics.inverted)
                // Creates a new array including any items that match the criteria
                // $0 is shorthand for the frist parameter
                allWords = allWords.filter { $0 != "" }
                for word in allWords {
                    wordCounts[word, default: 0] += 1
                }
                allWords = Array(wordCounts.keys)
            }
        }
    }
}
