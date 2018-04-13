/*
 * The four nucleotides found in DNA are adenine (**A**),
 * cytosine (**C**), guanine (**G**) and thymine (**T**).
 *
 * The four nucleotides found in RNA are adenine (**A**),
 * cytosine (**C**), guanine (**G**) and uracil (**U**).
 * `G` -> `C`
 * `C` -> `G`
 * `T` -> `A`
 * `A` -> `U`
 */

enum NucleotideError: Error {
    case runtimeError(String)
}

enum Nucleotide {
    case A(String)
    case C(String)
    case T(String)
    case U(String)
    case G(String)
    case Chain(String)
}

extension Nucleotide {
    init(_ rawString: String) throws {
        if rawString.count > 1 {
            self = .Chain(rawString)
            return
        }
        switch rawString {
        case "A": self = .A("Adenine")
        case "G": self = .G("Guanine")
        case "C": self = .C("Cytosine")
        case "T": self = .T("Thymine")
        case "U": self = .U("Uracil")
        default:
            throw NucleotideError.runtimeError("Nucleodite does not exist")
        }
    }
    
    func complementOfDNA() throws -> String {
        switch self {
        case .A: return "U"
        case .G: return "C"
        case .C: return "G"
        case .T: return "A"
        case .U:
            throw NucleotideError.runtimeError("Nucleodite does not have complement")
        case .Chain(let chainValue):
            return try chainValue.reduce("") { result, nucleotide in
                try result! + Nucleotide(String(nucleotide)).complementOfDNA()
                }!
        }
    }
}
