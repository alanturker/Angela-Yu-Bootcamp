//import UIKit
//
//func greeting3(name: String) -> Bool {
//    if name == "Angela" || name == "Jack Bauer" {
//        return true
//    } else {
//        return false
//    }
//}
//
//greeting3(name: "Angela")

var array = [0,1]
var start = 2

func fibonacci(n: Int) {

    for _ in start..<n {
    array.append(array[start-1]+array[start-2])
    start += 1
}
    }

    fibonacci(n: 8)
print(array)






