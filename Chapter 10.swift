import UIKit
import Foundation

//Challenge B
func removeOnce(itemToRemove: Int, fromArray: [Int]) -> [Int] {
    var tempArray = fromArray
    if let indexToRemove = tempArray.indexOf(itemToRemove) {
        tempArray.removeAtIndex(indexToRemove)
    }
    return tempArray
}

let w = [3,4,5]
print(removeOnce(4, fromArray: w))

//Challenge C
func remove(itemToRemove: Int, fromArray: [Int]) -> [Int] {
    return fromArray.filter({$0 != itemToRemove})
}

let x = [3,4,4,5,5,5,6]
print(remove(5, fromArray: x))

//Challenge D
func reverse(array: [Int]) -> [Int] {
    var tempArray: [Int] = []
    for (i, _) in array.enumerate() {
        tempArray.insert(array[i], atIndex: 0)
    }
    return tempArray
}
let y = [3,4,4,5,5,5,6]
print(reverse(y))

//Challenge E
func randomFromZeroTo(number: Int) -> Int {
    return Int(arc4random_uniform(UInt32(number)))
}

func randomArray(array: [Int]) -> [Int] {
    var tempArray = array
    for _ in tempArray {
        tempArray.insert(tempArray.removeAtIndex(randomFromZeroTo(tempArray.count)), atIndex: 0)
    }
    return tempArray
}

let z = [1,2,3,4,5,6,7]
print(randomArray(z))