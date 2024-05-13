//: [Previous](@previous)

import Foundation

func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var output = [Int]()
    
    for num in nums1 {
        if let index = nums2.firstIndex(of: num) {
            var nextIndex = index + 1
            if nextIndex >= nums2.count {
                output.append(-1)
            } else {
                var isBigger = false
                for i in nextIndex...nums2.count-1 {
                    if nums2[i] > num {
                        output.append(nums2[i])
                        isBigger = true
                        break
                    }
                }
                if !isBigger {
                    output.append(-1)
                }
            }
        }
            
    }
    return output
}
nextGreaterElement([2,4], [1,2,3,4])
nextGreaterElement([1,3,5,2,4],[6,5,4,3,2,1,7])
