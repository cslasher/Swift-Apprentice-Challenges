import UIKit

//Challenge B
func replaceValueForKey(key1: String,
                        withValueForKey key2: String,
                        inDictionary: [String: Int]) -> [String: Int] {
    var tempDictionary = inDictionary
    var value: Int? = inDictionary[key2]
    value = tempDictionary.updateValue(value!, forKey: key1)
    tempDictionary[key2] = value!
    return tempDictionary
}

var Dict1 = ["one": 1, "two": 2, "three": 3]
print(replaceValueForKey("three", withValueForKey: "one", inDictionary: Dict1))

//Challenge C
func printStatesLongerThanEight(inDictionary: [String: String]) {
    for (_, value) in inDictionary {
        if (value.characters.count > 8){
            print(value)
        }
    }
}

var Dict2 = ["WA": "Washinton", "CA": "California", "NY": "New York"]
printStatesLongerThanEight(Dict2)

//Challenge D
func combine(dict1: [String: String], with dict2: [String: String]) ->
    [String: String] {
        var tempDict = dict1
        for (key, _) in dict2 {
            tempDict[key] = dict2[key]
        }
        return tempDict
}

var Dict3 = ["one": "1", "two": "2", "three": "3", "WA": "4"]
print(combine(Dict3, with: Dict2))