//: [Previous](@previous)

import Foundation


func strStr(_ haystack: String, _ needle: String) -> Int {
        
    var haystackArr = Array(haystack)
    var needleArr = Array(needle)
    
    var candidate = [Int]()
    
    for i in 0..<haystackArr.count {
        if needleArr[0] == haystackArr[i] {
            candidate.append(i)
        }
    }
    
    for k in candidate {
        if k + needleArr.count > haystackArr.count{
            continue
        }
        
        var temp = ""
        for i in k..<(needleArr.count+k) {
            temp.append(haystackArr[i])
        }
        if temp == needle {
            return k
        }
    }
    
    return -1
}

strStr("asbasabuts", "sad")
