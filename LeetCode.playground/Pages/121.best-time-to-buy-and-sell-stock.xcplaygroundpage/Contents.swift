//: [Previous](@previous)

import Foundation

func maxProfit(_ prices: [Int]) -> Int {
    var minPrice = prices[0]
    var maxProfit = 0
    
    for price in prices {
        if price < minPrice {
            minPrice = price
        } else if price - minPrice > maxProfit {
            maxProfit = price - minPrice
        }
    }
    return maxProfit
}
maxProfit([7,1,5,3,6,4])
maxProfit([7,6,4,3,1])
maxProfit([1,2])

