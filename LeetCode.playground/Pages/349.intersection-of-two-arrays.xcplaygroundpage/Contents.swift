//: [Previous](@previous)

import Foundation

func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var output = [Int]()
    var n1 = nums1
    var n2 = nums2
    
    for num in n1 {
        if n2.contains(num) {
            if !output.contains(num){
                output.append(num)
            }
        }
    }
    return output
}
intersection([4,9,5], [9,4,9,8,4])
