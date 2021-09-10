//func loveCalculator(loveScore:Int){
//
//    switch loveScore {
//    case 80... :
//        print("You love each other like Kanye loves Kanye")
//    case 40..<80 :
//        print("You go together like Coke and Mentos")
//    case ..<40 :
//        print("You'll be forever alone")
//    default:
//        print("Error")
//    }
//
//}
//
//loveCalculator(loveScore:39 )

func dayOfTheWeek(day: Int) {

  switch day{
      case 1 :
      print("Monday")
      case 2 :
      print("Tuesday")
      case 3 :
      print("Wednesday")
      case 4 :
      print("Thursday")
      case 5 :
      print("Friday")
      case 6 :
      print("Saturday")
      case 7 :
      print("Sunday")
      default :
      print("Error")
  }

}

dayOfTheWeek(day: 5
)

//struct Town {
//    let name: String
//    var citizens: [String]
//    var resources: [String: Int]
//
//    init(name:String, citizens: [String], resources: [String: Int]) {
//        self.name = name
//        self.citizens = citizens
//        self.resources = resources
//    }
//    func fortify(){
//        print("Defenses inreased!")
//    }
//}
//
//var anotherTown = Town(name: "Nameless Island", citizens: ["Tom Hanks"], resources: ["Palm Trees": 100])
//var ghostTown = Town(name: "Ghost City", citizens: [], resources: ["Tumbleweed": 15])
//
//anotherTown.citizens.append("Wilson")
//
//print(anotherTown.citizens)
//print(ghostTown.resources["Tumbleweed"])
//
//
//struct User {
//    let name: String
//    var email: String
//    var followers: Int
//    var isActive: Bool
//
//       init(name: String, email: String, followers: Int, isActive: Bool) {
//           self.name = name
//           self.email = email
//           self.followers = followers
//           self.isActive = isActive
//       }
//
//       func logStatus() {
//           if isActive {
//               print("\(name) is working hard")
//           } else {
//               print("\(name) has left the chat")
//           }
//       }
//   }
//
//var newUser = User(name: "Richard", email: "emailksfkd", followers: 0, isActive: false)
//
//newUser.logStatus()
//
struct User {

    let name : String

    var email : (String?)

    var followers : Int

    var isActive : Bool

    // Initialise a User struct here

init(name : String , email : String?, followers : Int , isActive: Bool){

    self.name = name

    self.email = email

    self.followers = followers

    self.isActive = isActive

}

func logStatus() {

    if self.isActive == true{

        print("\(name) is working hard")

    } else{

        print("\(name) has left earth")

    }

}

}

var userOne = User(name : "Richard",email: nil, followers : 0, isActive: false)

userOne.logStatus()
