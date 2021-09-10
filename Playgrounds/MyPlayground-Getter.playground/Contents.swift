import Foundation


var pizzaInInches: Int = 10 {
    willSet {
//        print(pizzaInInches)
//        print(newValue)
    }
    didSet {
        if pizzaInInches >= 18 {
            print("Invalid pizza size it's inches set to 18")
            pizzaInInches = 18
        }
//        print(pizzaInInches)
//        print(oldValue)
    }
}

pizzaInInches = 20
print(pizzaInInches)

var numberOfPeople: Int = 6
let slicePerPerson: Int = 5

var numberOfSlices: Int {
    get{
       return pizzaInInches - 4
    }
    
}

var numberOfPizza: Int {
    get {
        let numberOfFedPeoplePerPizza = numberOfSlices / slicePerPerson
        return numberOfPeople / numberOfFedPeoplePerPizza
    }
    
    set {
        let totalNumberOfSlices = numberOfSlices * newValue
        
        numberOfPeople = totalNumberOfSlices / slicePerPerson
    }
}

print(numberOfPizza)
