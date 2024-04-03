import Foundation

class Person {
    var name:String
    private(set) var age:Int
    
    init(name:String,age:Int) {
        self.name=name
        self.age=age
    }
    
    func incAge(by:Int) {
        self.age+=by
    }
}


let p1=Person(name: "Aditya", age: 24)
/*p1.age+=1*/
p1.incAge(by: 1)
p1.age


// ============= Example 2 ===============
class Vehicle {
    var type:String
    var model:String
    //designate initializer (DI)
    init() {
        self.type="unknown"
        self.model="normal"
        
//        self.init(type:"car",model:"normal") // <Error : DI can't deligate to another DI>
    }
    
    // DI
    init(type:String,model:String) {
        self.type=type
        self.model=model
    }
    
    convenience init(type:String) {
        self.init(type: type, model: "normal")
    }
}


class Car:Vehicle {
    override init() {
//        super.init(type: "car")  <Error :  must call DI>
        super.init(type: "Car", model: "normal")
    }
    
    // no need to mention override if parameters variables names change
    //    init(type:String,model:String) {
        init(x:String,y:String) {
        super.init(type: x, model: y)
    }
    
    static func staticFunc() {
        print("ok")
    }
    
    func method(){
        print("method")
    }
    
    
    init(model:String) {
        super.init(type: "Car", model: "race")
    }
}

let racecar=Car(model: "race")
let car = Car()
car.method()
Car.staticFunc()

