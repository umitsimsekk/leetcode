//: [Previous](@previous)

import Foundation

func plusOne(_ digits: [Int]) -> [Int] {
    
    var arr = digits
    arr[arr.count-1] += 1
    
    for i in arr.indices.reversed() {
        if arr[i] > 9 {
            arr[i] = arr[i] % 10
            if i == 0 {
                arr.insert(1, at: 0)
            } else {
                arr[i - 1] += 1
            }
        }
    }
    return arr
}

plusOne([4,3,9,9])
