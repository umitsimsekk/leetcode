//: [Previous](@previous)

import Foundation

func longestCommonPrefix(_ strs: [String]) -> String {
    if strs.count == 1 {
        return strs.first!
    }
    var count = strs.first!.count
    var st = ""
    for str in strs {
        if str.count <= count {
            count = str.count
            st = str
        }
    }
    print(st)
    var output = ""
    for (k,v) in st.enumerated() {
        var isEquals : Bool = true
        for str in strs {
            if st != str {
                for (i,j) in str.enumerated(){
                    if i == k {
                        if v == j {
                            isEquals = true
                        } else {
                            isEquals = false
                            return output
                        }
                        break
                    }
                }
            }
        }
        if isEquals {
            output += String(v)
        } else {
            return output
        }
    }
    return output
}
longestCommonPrefix(["reflower","flow","flight"])

