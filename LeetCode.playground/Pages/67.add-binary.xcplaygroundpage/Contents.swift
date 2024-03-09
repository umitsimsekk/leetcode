//: [Previous](@previous)

import Foundation

func addBinary(_ a: String, _ b: String) -> String {
    let a = Array(a)
    let b = Array(b)
    var output = ""
    var carry = 0
    var i = a.count - 1
    var j = b.count - 1
    
    while i >= 0 || j >= 0 || carry > 0 {
        var sum = carry
        
        if i >= 0 {
            sum += Int(String(a[i]))!
            i -= 1
        }
        if j >= 0 {
            sum += Int(String(b[j]))!
            j -= 1
        }
        
        output = "\(sum % 2)" + output
        carry = sum / 2
    }
    return output
}

addBinary("1011", "111")
