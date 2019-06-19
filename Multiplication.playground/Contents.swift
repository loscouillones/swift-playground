import Foundation

func mulTable(_ num:Int, upTo:Int) {
    for i in 0...upTo {
        print("\(num) x \(i) = \(num*i)")
    }
}

for x in 1...10 {
    print("Table de multiplication de \(x):\n===")
    mulTable(x, upTo: 10)
    print("\n")
}

func pad(_ str: String) -> String {
    return str.padding(toLength: 12, withPad: " ", startingAt: 0)
}

let data = [
    "AAPL": [
        "name": "Apple",
        "value": 160,
        "variation": 1.45
    ],
    "LREN3": [
        "name": "Renner",
        "value": 30.01,
        "variation": -0.77
    ],
    "BMW AG":[
        "name": "BMW",
        "value": 88.36,
        "variation": 0.79
    ],
    "SINTEX": [
        "name": "Sintex",
        "value": 26.95,
        "variation": 1.35
    ]
]


print("Name\t\tCode\t\tvalue\t\tvariation\n=============================================")
for (code, stock) in data {
    let value = stock["value"]!
    let company = stock["name"]!
    let variation = stock["variation"]!
    print(
    """
    \(company)\t\t\(code)\t\t\(value)\t\t\(variation)%
    """
    )
}
