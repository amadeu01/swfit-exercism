import Foundation

class SumOfMultiples {
    static func findMutiples(_ limit: Int, for multiple: Int) -> [Int] {
        if multiple >= limit {
            return [Int]()
        }
        let numbers = multiple..<limit
        return numbers.filter {
            if multiple == 0 {
                return false
            }
            
            if $0 == 0 {
                return false
            }
            
            if $0 > multiple {
                return $0 % multiple == 0
            } else {
                return multiple % $0 == 0
            }
            
        }
    }
    
    static func toLimit(_ limit: Int, inMultiples: [Int]) -> Int {
        let arrayOfMultiples = inMultiples.map { findMutiples(limit, for: $0) }
        let multiples = Array(Set(arrayOfMultiples.joined()))
        let response = multiples.reduce(0, +)
        return response
    }
}
