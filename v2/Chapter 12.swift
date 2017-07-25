import UIKit

//Challenge B
func checkSetInclusion(inSet: Set<String>, by email: String) -> Bool {
    let tempSet: Set = [email]
    if (tempSet.intersect(inSet).isEmpty) {
        return false
    } else {
        return true
    }
}

let Set1: Set = ["1@12.com", "2@3.com", "test@example.com"]
print(checkSetInclusion(Set1, by: "2@3.com"))
print(checkSetInclusion(Set1, by: "3@3.com"))

//Challenge C
let day1: Set = ["Anna", "Benny", "Charlie"]
let day2: Set = ["Anna", "Benny", "Danny"]
let day3: Set = ["Anna", "Danny", "Eric"]

//1
func allAttended(day1: Set<String>, day2: Set<String>, day3: Set<String>) ->
    Set<String> {
        return day1.intersect(day2.intersect(day3))
}
print(allAttended(day1, day2: day2, day3: day3))
//2
func droppedOutAfterDay1(day1: Set<String>, day2: Set<String>, day3: Set<String>) ->
    Set<String> {
        return day1.subtract(day2.union(day3))
}
print(droppedOutAfterDay1(day1, day2: day2, day3: day3))