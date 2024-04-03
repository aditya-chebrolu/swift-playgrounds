import Foundation

struct Person {
    let name:String
    var age:Int
    
    init(age: Int) {
        self.name = "Guest User"
        self.age = age
    }  
    init(name:String,age: Int) {
        self.name = name
        self.age = age
    }
    
}

let p0=Person(name:"Aditya",age: 24) // instantiating
p0.name

var p1=Person(age:0);
p1.age=24 //works
p1.age

struct Person2 {
    let fn:String;
    let ln:String;
    var age:Int
    var fullName:String {
        "\(fn) \(ln)"
    }
    
    private mutating func changeFirstName(fn:String) {
//        self.fn=fn; // Cannot assign to property: 'fn' is a 'let' constant (even with mutating prefix)
    }
    
    mutating func changeAge(inputAge:Int) {
        age=inputAge; // Cannot assign to property: 'self' is immutable (without mutating)
    }
}

let p2=Person2(fn: "Aditya", ln: "Chebrolu",age: 24)
p2.fullName
//p2.chnageAge(age: 25) // Cannot use mutating member on immutable value: 'p2' is a 'let' constant

var mutablePerson=Person2(fn: "Aditya", ln: "Chebrolu", age: 24)
mutablePerson.changeAge(inputAge: 23)

let immutablePerson=mutablePerson // value is copied
//immutablePerson.changeAge(age: 24)  //cannot use mutating member on immutable value: 'immutablePerson' is a 'let' constant

struct Bike {
    let name:String
    let speed:Int
    
    func copy(speed:Int)-> Bike {
        Bike(name:self.name,speed:speed)
    }
}


let b1=Bike(name:"Pulser",speed: 180)
let b2=b1.copy(speed: 250)

b1.speed
b2.speed

struct UserModal {
    let name:String
    private(set) var isPremium:Bool //only private when setting value
    
//    way 1 : UserModal(name:"Aditya")
//    init(name:String,isPremium:Bool=false){
//        self.name=name
//        self.isPremium=isPremium
//    }
    
//    way 2 : UserModal(name:"Aditya",isPremium:nil)
    init(name:String,isPremium:Bool?) {
        self.name=name
        self.isPremium=isPremium ?? false
    }
}

let u1=UserModal(name: "Aditya",isPremium: nil)
u1.isPremium

 


/*
 NOTES :
 
 Structures are stored in Stack
 
 Structures are value types.
 i.e. if you assign one instance to another,
 then the value is copied instead of passing reference
 
 Structures dont support inheritance
 
 */


