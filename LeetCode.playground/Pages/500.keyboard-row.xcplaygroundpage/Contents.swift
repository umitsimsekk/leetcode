//: [Previous](@previous)

import Foundation

func findWords(_ words: [String]) -> [String] {
    let firstRow = Array("qwertyuiop")
    let secondRow = Array("asdfghjkl")
    let thirdRow = Array("zxcvbnm")
    
    var output = [String]()
    for word in words {
        let j = word.first!.lowercased()
        if firstRow.contains(j){
            var count = 0
            for char in word {
                if firstRow.contains(char.lowercased()) {
                    count += 1
                } else {
                    break
                }
            }
            if count == word.count {
                output.append(word)
            }
        } else if secondRow.contains(j){
            var count = 0
            for char in word {
                if secondRow.contains(char.lowercased()) {
                    count += 1
                } else {
                    break
                }
            }
            if count == word.count {
                output.append(word)
            }
            
        } else if thirdRow.contains(j){
            var count = 0
            for char in word {
                if thirdRow.contains(char.lowercased()) {
                    count += 1
                } else {
                    break
                }
            }
            if count == word.count {
                output.append(word)
            }
        }
        
    }
    return output
}

