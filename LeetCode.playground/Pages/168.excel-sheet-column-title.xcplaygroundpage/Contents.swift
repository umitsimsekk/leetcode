//: [Previous](@previous)

import Foundation

func convertToTitle(_ columnNumber: Int) -> String {
    let alphabet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"] //  26
    var num = columnNumber // 26
 
    if columnNumber <= 26 {
        return alphabet[columnNumber-1]
    }
    var str = ""
    
    while num >= 0 {
        if num <= 26 {
            str += alphabet[num-1]
            num = -1
            break
        }
        var remain = num % 26
        if remain == 0 {
            str += alphabet.last!
            num = (num/26)-1
        } else {
            str += alphabet[remain-1]
            num /= 26
        }
    }
    var output = ""
    for char in str.reversed(){
        output.append(String(char))
    }
    
    return output
}
convertToTitle(28) // "AB"
convertToTitle(701) // "ZY"
convertToTitle(52) // "AZ"
