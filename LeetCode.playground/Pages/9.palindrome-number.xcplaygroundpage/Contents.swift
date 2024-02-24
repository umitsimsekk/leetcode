import Foundation

func isPalindrome(_ x: Int) -> Bool {
   var num  = String(x)
   var reverse = ""
    for n in num.reversed() {
        let char = String(n)
        reverse.append(char)
    }
    return num == reverse ? true : false
}
isPalindrome(121)
