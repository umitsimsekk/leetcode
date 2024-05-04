//: [Previous](@previous)

import Foundation

func findRelativeRanks(_ score: [Int]) -> [String] {
    var orderedScore = score.sorted(by: >)
    var output = [String]()
    for num in score {
        if orderedScore.firstIndex(of: num)! == 0 {
            output.append("Gold Medal")
        } else if orderedScore.firstIndex(of: num)! == 1 {
            output.append("Silver Medal")
        } else if orderedScore.firstIndex(of: num)! == 2 {
            output.append("Bronze Medal")
        } else {
            output.append(String(orderedScore.firstIndex(of: num)! + 1))
        }
            
    }
   return output
}
findRelativeRanks([10,3,8,9,4])
findRelativeRanks([5,4,3,2,1])
