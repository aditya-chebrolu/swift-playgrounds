import Foundation


extension Int {
    mutating func plusTwo() {
        self += 2
    }
}

var num=2;
num.plusTwo()
num



struct Person {
var fn:String
var ln:String
}


extension Person {
    init(fullName:String) {
        let components=fullName.components(separatedBy: " ")
        self.init(fn: components.first ?? fullName, ln: components.last ?? fullName)
    }
}


let person = Person(fullName: "Aditya Chebrolu")
person.fn
person.ln


class MyDouble {
    let value:Double
    
    init(value:Double) {
        self.value=value
    }
}

extension MyDouble {
    convenience init() {
        self.init(value: 0)
    }
}

/*
 NOTE:
 1. When you define an initializer, it will override the default initializer given by Struct/Class. To avoid that we can us extesion to provide an initializer
 2. Extensions can also be used to implement/conform a protocol.
*/
