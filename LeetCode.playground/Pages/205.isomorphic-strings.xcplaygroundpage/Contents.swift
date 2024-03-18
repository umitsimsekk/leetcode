//: [Previous](@previous)

import Foundation

func isIsomorphic(_ s: String, _ t: String) -> Bool {
    var dict = [String : String]()
    if s.count != t.count {
        return false
    }
    var stDict = [Character: Character](), tsDict = [Character: Character]()
    let s = Array(s), t = Array(t)
    
    for (i, sChar) in s.enumerated() {
        let tChar = t[i]
        
        if stDict[sChar] == nil && tsDict[tChar] == nil {
            stDict[sChar] = tChar
            tsDict[tChar] = sChar
        } else if stDict[sChar] != tChar || tsDict[tChar] != sChar {
            return false
        }
    }
    
    return true
}
isIsomorphic("paper", "title")
isIsomorphic("foo", "bar")
