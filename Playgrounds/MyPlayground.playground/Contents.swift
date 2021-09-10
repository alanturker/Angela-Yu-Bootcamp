/*
var a = 5
var b = 8

var c = b-a
var d = a-b

a = c + a
b = d + b


print("a is equal to \(a)")
print("b is equal to \(b)") */

//var numbers = [45, 73, 195, 53]
//var computedNumbers = [numbers[0]*numbers[1], numbers[1]*numbers[2], numbers[2]*numbers[3]]
//
//print(computedNumbers)

//let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
//
//
//let password = "\(alphabet.randomElement())\(alphabet.randomElement())\(alphabet.randomElement())\(alphabet.randomElement())\(alphabet.randomElement())\(alphabet.randomElement())"
//
//
//print(password)


//let stringValue: [Any] = []
//
//let password = "\(stringValue.randomElement())"
//
//print(password)

//
//func greeting() {
//
//    print("hello")
//
//
//}
//
//func greeting2(whoToGreet: String){
//
//    print("Hello \(whoToGreet)")
//
//}
//
//greeting2(whoToGreet: "türker")
//
//func add (n1:Int, n2:Int){
//    print(n1+n2)
//}
//
//func subtract(n1:Int, n2:Int){
//    print(n1-n2)
//}
//
//func multiply(n1:Int, n2:Int){
//    print(n1*n2)
//}
//
//func divide(n1:Int, n2:Int){
//    print(Float(n1)/Float(n2))
//}
//
//  add(n1: 3, n2: 4)
//  subtract(n1: 3, n2: 4)
//  multiply(n1: 3, n2: 4)
//  divide(n1: 3, n2: 4)
//

func loveCalculator(){
    
    let loveScore = Int.random(in: 0...100)
    
    print(loveScore)
    
    if loveScore >= 80 {
        print("You love each other like Kanye loves Kanye")
    } else if loveScore > 40 && loveScore < 80 {
        print("You go together like Coke and Mentos")
    } else {
        print("You'll be forever alone")
    }
}

loveCalculator()


