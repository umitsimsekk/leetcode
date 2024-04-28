
func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
    var mDict = [Character: Int]()
    var rDict = [Character: Int]()
    for c in magazine {
        if mDict.keys.contains(c) {
            mDict[c]! += 1
        } else {
            mDict[c] = 1
        }
    }
    for c in ransomNote {
        if rDict.keys.contains(c) {
            rDict[c]! += 1
        } else {
            rDict[c] = 1
        }
    }

    for val in rDict {
        if mDict.keys.contains(val.key) {
            if mDict[val.key]! >= val.value {
                continue
            } else {
                return false
            }
        } else {
            return false
        }
    }
    
    return true
}
canConstruct("a", "b")
