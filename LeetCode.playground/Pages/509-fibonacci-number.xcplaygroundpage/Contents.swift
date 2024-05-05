//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func fib(_ n: Int) -> Int {
    if n < 2 {
        return n
    }
    var num1 = 0
    var num2 = 1
    for _ in 2...n {
        let temp = num2
        num2 += num1
        num1 = temp
    }
    return num2
}
fib(2)
fib(3)
fib(4)
