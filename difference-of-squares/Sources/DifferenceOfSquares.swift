import Foundation
struct Squares {
    let numberOfIntegers: Int

    var squareOfSums: Int {
        return Int(pow(Double(((numberOfIntegers + 1) * numberOfIntegers)/2), 2.0))
    }

    // From https://trans4mind.com/personal_development/mathematics/series/sumNaturalSquares.htm
    var sumOfSquares: Int {
        return Int(pow(Double(numberOfIntegers), 3.0)/3.0 + pow(Double(numberOfIntegers), 2.0)/2.0 + Double(numberOfIntegers)/6.0)
    }

    var differenceOfSquares: Int {
        return squareOfSums - sumOfSquares
    }

    init(_ numberOfIntegers: Int) {
        self.numberOfIntegers = numberOfIntegers
    }
}
