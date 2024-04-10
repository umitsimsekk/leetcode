//: [Previous](@previous)

import Foundation

func firstUniqChar(_ s: String) -> Int {
    var char = [Character]()
    var arr = Array(s)
    
    for i in 0..<arr.count {
        var isUnique = true
        for j in i+1..<arr.count {
            if arr[i] == arr[j]  {
                isUnique = false
                char.append(arr[i])
                break
            }
            
        }
        if isUnique && !char.contains(arr[i]){
            return i
        }
    }
    
    return -1
}
firstUniqChar("leetcode")
firstUniqChar("aabb")
firstUniqChar("loveleetcode")
