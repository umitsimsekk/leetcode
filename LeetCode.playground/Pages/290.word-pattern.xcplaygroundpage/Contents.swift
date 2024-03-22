//: [Previous](@previous)

import Foundation

func wordPattern(_ pattern: String, _ s: String) -> Bool {
    let sArr = s.split(separator: " ")
    if sArr.count != pattern.count {
        return false
    }
    var dict  = [String: String]()
    for (i,c) in pattern.enumerated(){
        let char = String(c)
        let word = String(sArr[i])
        
        if let charWord = dict[char] {
            if charWord != word {
                return false
            }
        } else {
            if dict.values.contains(word) {
                return false
            } else {
                dict[char] = word
            }
        }

    }
    return true
}
wordPattern("abba", "dog cat cat dog")
wordPattern("abba", "dog cat cat fish")
wordPattern("aaaa", "dog cat cat dog")
wordPattern("abba", "dog dog dog dog")
