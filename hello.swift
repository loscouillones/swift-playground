import Foundation

var nachosPrice = 7.5
var beerPrice = 5.5
var nachosCount = 3
var beerCount = 7
var totalNachos = Double(nachosCount) * nachosPrice
var totalBeers = Double(beerCount) * beerPrice
var total = totalBeers + totalNachos
let totalString = String(format: "%.2f", total)
String()

print(
    """
    .: Le bar de Greg :.
    ------------------
    \(nachosCount)x Nachos \(nachosPrice) €    Total : \(Double(nachosCount) * nachosPrice)
    \(beerCount)x Bières \(beerPrice) €    Total : \(Double(beerCount) * beerPrice)
    Total \(totalString) €
    """
)
