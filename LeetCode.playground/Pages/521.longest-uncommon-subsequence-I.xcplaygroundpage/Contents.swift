//: [Previous](@previous)

import Foundation

func findLUSlength(_ a: String, _ b: String) -> Int {
    if a == b {
        return -1
    }
    return a.count == b.count ? a.count : max(a.count, b.count)
}
