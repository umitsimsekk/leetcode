//: [Previous](@previous)

import Foundation

func isSubsequence(_ s: String, _ t: String) -> Bool {
    if s.count > t.count {
        return false
    }
    var sDict = [Character: Int]()
    var tDict = [Character: Int]()
    
    for c in s {
        if sDict.keys.contains(c) {
            sDict[c]! += 1
        } else {
            sDict[c] = 1
        }
    }
    for c in t {
        if tDict.keys.contains(c) {
            tDict[c]! += 1
        } else {
            tDict[c] = 1
        }
    }
    print(sDict)
    print(tDict)
    var output = true
    
    for d in sDict {
        if tDict.keys.contains(d.key) {
            if tDict[d.key]! >= d.value {
                var output = true
            } else {
                return false
            }
        } else {
            return false
        }
    }
    
    
    return output
}
isSubsequence("axc", "ahbgdc")
