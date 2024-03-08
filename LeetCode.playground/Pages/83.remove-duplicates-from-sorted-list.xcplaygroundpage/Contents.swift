//: [Previous](@previous)

import Foundation
import UIKit
func mySqrt(_ x: Int) -> Int {
    guard x > 1 else { return x }
    
    var low = 1    // 2
    var high = x   // 3
    
    while low <= high {
        var mid = low + (high - low) / 2      //1
        var result = mid * mid   // 1
        if result == x {
            return mid
        } else if result > x {
            high = mid - 1
        } else {
            low = mid + 1
        }
    }
    
    return high
}
mySqrt(8)
