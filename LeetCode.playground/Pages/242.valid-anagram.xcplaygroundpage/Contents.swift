//: [Previous](@previous)

import Foundation

func isAnagram(_ s: String, _ t: String) -> Bool {
    var sDict = [Character : Int]()
    var tDict = [Character : Int]()
    if s.count != t.count {
        return false
    }
    for char in s {
        if sDict[char] != nil {
            sDict[char]! += 1
        } else {
            sDict[char] = 1
        }
    }
    for char in t {
        if tDict[char] != nil {
            tDict[char]! += 1
        } else {
            tDict[char] = 1
        }
    }
    
    for char in sDict.keys{
        if sDict[char] != tDict[char] {
            return false
        }
    }
    return true
}
isAnagram("anagram", "nagaram")
isAnagram("rat", "cat")
