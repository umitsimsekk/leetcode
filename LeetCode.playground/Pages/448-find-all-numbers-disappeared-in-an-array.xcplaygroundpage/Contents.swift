

func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
    var output = [Int]()
    
    for i in 1...nums.count {
        if !nums.contains(i) {
            output.append(i)
        }
    }
    return output
}
findDisappearedNumbers([4,3,2,7,8,2,3,1])
