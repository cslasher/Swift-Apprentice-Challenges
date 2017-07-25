import UIKit

//Challenge A
func repeatTask(times: Int, task: () -> Void) {
    for _ in 1...times {
        task()
    }
}

repeatTask(10) {print("Swift Apprentice is a great book!")}

//Challenge B
func mathSum(times: Int, operation: (Int) -> Int) -> Int {
    var sum: Int = 1
    for i in 1...times {
        sum = sum + operation(i)
    }
    return sum
}

//Square sum of 10
print("Square sum of 10 = " + String(mathSum(10) {Int(pow(Double($0), 2))}))
//Fibonacci sum of 10

func fibonacci(number: Int) -> Int {
    if (number <= 0) {
        return 0
    } else if (number == 1) || (number == 2) {
        return 1
    } else {
        return fibonacci(number - 1) + fibonacci(number - 2)
    }
}

print("Fibonacci sum of 10 = " + String(mathSum(10) {fibonacci($0)}))
