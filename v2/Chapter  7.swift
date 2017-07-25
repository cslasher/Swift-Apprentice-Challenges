import UIKit

//Challenge A
func isNumberDivisible(number: Int, by byNumber: Int) -> Bool {
    if (number % byNumber == 0) {
        return true
    } else {
        return false
    }
}

func isPrime(number: Int) -> Bool {
    if (number <= 1) {
        return false
    } else {
        for i in 2...Int(sqrt(Double(number))) {
            if (isNumberDivisible(number, by: i)) {
                return false
            }
        }
        return true
    }
}

isPrime(6) // false
isPrime(13) // true
isPrime(8893) // true

//Challenge B
func fibonacci(number: Int) -> Int {
    if (number <= 0) {
        return 0
    } else if (number == 1) || (number == 2) {
        return 1
    } else {
        return fibonacci(number - 1) + fibonacci(number - 2)
    }
}

fibonacci(1)  // = 1
fibonacci(2)  // = 1
fibonacci(3)  // = 2
fibonacci(4)  // = 3
fibonacci(5)  // = 5
fibonacci(10) // = 55