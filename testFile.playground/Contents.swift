import UIKit

//let originalString = "KA05B1234"
//
//// Get first two letters
//let firstTwoLetters = originalString.prefix(2)
//
//// Convert back to string
//let resultString = String(firstTwoLetters)
//
//// Output result
//print(resultString) // "He"


//// Original string
//let originalString = "KA05B1234"
//
//// Get middle two letters
//let firstTwoLetters = originalString.prefix(2)
//
//let middleTwoLetters = originalString.prefix(4).suffix(2)
//
//let district = originalString.prefix(6).suffix(1)
//let number = originalString.prefix(9).suffix(4)
//
//// Convert back to string
////let resultString = String(middleTwoLetters)
//
//// Output result
//print(firstTwoLetters+" "+middleTwoLetters+" "+district+" "+number) // "o "
//
//func vehicleNumber(originalString: String) {
//    let firstTwoLetters = originalString.prefix(2)
//
//    let middleTwoLetters = originalString.prefix(4).suffix(2)
//
//    let districtNum = originalString.prefix(6).suffix(1)
//    let number = originalString.prefix(9).suffix(4)
//
//    // Convert back to string
//    //let resultString = String(middleTwoLetters)
//
//    // Output result
//    print(firstTwoLetters+" "+middleTwoLetters+" "+districtNum+" "+number)
//}

//let pattern = "^[A-Z]{2}-[0-9]{2}-[A-Z]{2}-[0-9]{4}$"
//let regex = try! NSRegularExpression(pattern: pattern)

//var arr: [Int] = [34,54,34,23,244,53,64]
//arr.append(3)
//arr.count
//arr.last
//arr[0]
//arr.insert(20, at: 1)
//arr.remove(at: 0)
//arr.append(20)
//arr.sort()
//print(arr)
//arr.reversed()
//print(arr)
//arr.reverse()
//print(arr)
//
//var ages:Set<Int> = []
//
//var newAge = Set(arr)
//print(newAge)
//newAge.contains(54)
//newAge.insert(343)
//print(newAge)


import Combine

//let stringPublisher = ["1","2","3","4","5"].publisher
//
//let intPublisher = stringPublisher
//    .map{ Int($0) ?? 0 }
//
//let subscriber = intPublisher
//    .sink{ print($0)}

//class Student {
//
//    let name: String
//    let age: Int
//
//    init(name:String, age:Int){
//        self.name = name
//        self.age = age
//    }
//}
//
//let studentPublisher = PassthroughSubject<Student, Never>()
//
//let subscriber = studentPublisher
//    .sink { studentData in
//        print("\(Student.name) is \(Student.age) year old")
//    }
//
//
//studentPublisher.send(Student(name:))

//let publisher = [1,2,3,4,5].Publisher
//
////usiging filter operator to filter only even number
//let evenPublisher = publisher.filter { $0 % 2 == 0}

//let arr = [1,2,3,4,5]
//
//let str = ["A","B","C","D","E"]
//
//


//func holdStudentName(name:String) -> String{
//    let name = name
//    return name
//}
//
//holdStudentName(name: "Hello")

//var sum:Int = 0
//
//func addTwoNumber(a:Int, b:Int) -> Int {
//    sum = a + b
//    return sum
//}
//
//let addition = addTwoNumber(a: 3, b: 5)
//print(addition)
//
//func calculate(of number:Int...) -> Int {
//    var sum = 0
//
//    for i in number {
//        sum += i
//    }
//
//    return sum
//}
//
//let totalSum = calculate(of: 1,2,3,4,5,6)
//print(totalSum)

//
//func filterArray<T>(_ array: [T], _ isInclude:(T) -> Bool) -> [T] {
//
//    var filteredArray = [T]()
//    for item in array {
//        if isInclude(item) {
//            filteredArray.append(item)
//        }
//    }
//    return filteredArray
//}
//
//let arr = [1,2,3,4,5]
//let filteredNumber = filterArray(arr) { $0 % 2 == 0 }

//print(filteredNumber)


//HOF
//struct Student {
//
//    var name: String
//    var rollNo: Int
//
//}
//
//var students = [
//    Student(name:"Alok" , rollNo:1),
//    Student(name: "Akash", rollNo: 2),
//    Student(name: "Arun", rollNo: 3),
//    Student(name: "Raju", rollNo: 4),
//    Student(name: "Vishal", rollNo: 5)
//]
//
//
////print("Student name is \(students[0].name) and his rollNo. is \(students[0].rollNo)")
//
//let studentName = students.map{ $0.name }
//print(studentName)
//
//let studentRollNo = students.map{ $0.rollNo }
//print(studentRollNo)
//
//let studentNameStartWithA = students.filter { $0.name.hasPrefix("A")}
//print(studentNameStartWithA)
//
//let totalRollNo = students.reduce(0) { $0 + $1.rollNo }
//print(totalRollNo)
//
//let grateRollNo = students.sorted { $0.rollNo < $1.rollNo }
//print(grateRollNo)

//ENUM
enum Direction {
    case north
    case south
    case east
    case west
    
}

let getDirection = Direction.south

switch getDirection{
case .north:
    print("")
case .south:
    print("south direction")
    
default:
    print("no direction found")
}
