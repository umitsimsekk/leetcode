
func fizzBuzz(_ n: Int) -> [String] {
    var output = [String]()
    
    for i in 1...n{
        
        var val = String(i)
        if i % 3 == 0 && i % 5 == 0{
            output.append("FizzBuzz")
        } else if i % 3 == 0 {
            output.append("Fizz")
        } else if i % 5 == 0 {
            output.append("Buzz")
        } else {
            output.append(val)
        }
    }
    return output
}
fizzBuzz(15)
