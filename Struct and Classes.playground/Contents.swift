import UIKit

class Person {
    var name: String
    var sirName: String

    init(name: String, sirName: String) {
        self.name = name
        self.sirName = sirName
    }
}
//let sunny = Person(name: "bunny", sirName: "money")
//sunny.name = "value change"
//print(sunny.name)
//
//var sunnys = Person(name: "bunny", sirName: "money")
//let sunny3 = sunnys
//sunnys.name = "value change"
print(sunny3.name)
struct Demo {
    var name: String
    var sirname: String
}

let sunny = Demo(name: "bunny", sirname: "money")
sunny.name = "value change"
print(sunny.name)

var sunnys = Demo(name: "bunny", sirname: "money")
let sunny3 = sunnys
sunnys.name = "value change"


