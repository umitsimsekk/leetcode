
import Foundation


func romanToInt(_ s: String) -> Int {
    let dict: [Character : Int] = [
        "I": 1,
        "V": 5,
        "X": 10,
        "L": 50,
        "C": 100,
        "D": 500,
        "M": 1000
    ]
    
    var result: Int = 0
    var previous: Int = 0
    
    for character in s {
        if let number = dict[character] {
            result += number
            if number > previous {
                result -= 2 * previous
            }
            previous = number
        }
    }
    return result
}
romanToInt("MCMXCIV")
romanToInt("LVIII")
romanToInt("III")
romanToInt("CMLII")
