
import Foundation

enum Test:Int {
    case ace = 1
    case heart, foo
    case diamond
    
    func description() -> String {
        switch self{
        case .ace:
            return "ace"
        default:
            return "dtc"
        }
    }
}

var toto = Test.diamond
let converted = Test(rawValue: 1)
print(converted!.description())

enum ServerResponse {
    case result(String, String)
    case failure(String)
}

let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("Out of cheese.")

switch success {
case let .result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
case let .failure(message):
    print("Failure...  \(message)")
}
// Prints "Sunrise is at 6:00 am and sunset is at 8:09 pm."
