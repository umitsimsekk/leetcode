//: [Previous](@previous)

import Foundation
func reverseBits(_ n: Int) -> Int {
    let nn = String(n)
    var output = [String]()
    for char in nn.reversed() {
        output.append(String(char))
    }
    print(output)
    var count = 0
   
    for i in (0..<output.count) {
        let k = (output.count-1)-i
        let pow = pow(2, k)
        let q = NSDecimalNumber(decimal: pow)
        let result = Int(truncating: q) * Int(output[i])!
        count += result
    }
    return count
}

reverseBits(101101)
