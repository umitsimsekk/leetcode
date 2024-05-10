//: [Previous](@previous)

import Foundation

func findPoisonedDuration(_ timeSeries: [Int], _ duration: Int) -> Int {
    var poisenedDuration = [Int]()
    
    for num in timeSeries {
        for i in num..<num+duration {
            if !poisenedDuration.contains(i) {
                poisenedDuration.append(i)
            }
        }
    }
    return poisenedDuration.count
}
findPoisonedDuration([1,4], 2)
