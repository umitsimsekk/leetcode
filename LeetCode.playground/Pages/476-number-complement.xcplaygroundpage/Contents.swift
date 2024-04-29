

func findComplement(_ num: Int) -> Int {
    var str = String(num, radix: 2)
    var reversedStr = ""
    for char in str {
        reversedStr += char == "1" ? "0" : "1"
    }
    let number = Int(reversedStr,radix: 2)
    return number!
}
findComplement(5)
