
import Foundation

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var output = [Int]()
    
    for i in nums.indices {
        for j in nums.indices {
            if j > i {
                if nums[j] + nums[i] == target {
                    output.append(i)
                    output.append(j)
                }
            }
        }
    }
    return output
}
print(twoSum([2,7,11,15], 18))
