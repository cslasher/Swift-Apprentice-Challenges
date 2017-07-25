import UIKit

//Challenge B
func divideIfWhole(value: Int, by divisor: Int) -> Int? {
    if (value % divisor == 0) {
        return (value / divisor)
    } else {
        return nil
    }
}

if let answer = divideIfWhole(10, by: 2) {
    print("Yep, it divides \(answer) times")
} else {
    print("Notdivisible:[")
}

if let answer = divideIfWhole(10, by: 3) {
    print("Yep, it divides \(answer) times")
} else {
    print("Notdivisible:[")
}

//Challenge C
print("It divides \(divideIfWhole(10, by: 2) ?? 0) times")
print("It divides \(divideIfWhole(10, by: 3) ?? 0) times")