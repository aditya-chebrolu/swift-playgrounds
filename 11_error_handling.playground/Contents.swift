import Foundation

struct Person {
    let fn: String?
    let ln: String?
    
    enum Errors:Error {
        case fnIsNil
        case lnIsNil
        case bothAreNil
    }
    
    func getName() throws ->  String {
        switch(fn,ln) {
        case (.none, .none):
            throw Errors.bothAreNil
        case (.none,.some):
            throw Errors.fnIsNil
        case (.some,.none):
            throw Errors.lnIsNil
        case let (.some(fn),.some(ln)):
            "\(fn) \(ln)"
        }
    }
}


let p1=Person(fn: "Aditya", ln: nil)
//p1.getName() // <Error : Call can throw but is not marked with 'try'>
do {
    let fullName = try p1.getName()
}catch {
    "Error is \(error)" // default variable name is error, if we dont mention anything
}


// How to catch specific errors
do {
    let fullName = try p1.getName()
}catch Person.Errors.lnIsNil {
    "Last name is nil"
} catch Person.Errors.fnIsNil {
    "First name is nil"
}


struct Car {
    let name:String
    
    enum Errors:Error {
        case nameEmpty
    }
    
    init(_ name:String) throws {
        if name.isEmpty {
            throw Errors.nameEmpty
        }
        self.name=name
    }
}

do {
    let car = try Car("")
} catch Car.Errors.nameEmpty {
    "Car name is empty"
}

if let car = try? Car("Audi") {
    "your car's name is \(car.name)"
} else {
    "Failed to construct"
}



struct Dog {
    let isInjured:Bool
    let isSleeping:Bool
    
    enum BarkingErrors:Error {
        case cannotBarkWhileSleeping
    } 
    
    enum RunningErrors:Error {
        case cannotRunWhileInjured
    }
    
    func bark() throws {
        if isSleeping {
            throw BarkingErrors.cannotBarkWhileSleeping
        }
    }
    
    func run() throws {
        if isInjured {
            throw RunningErrors.cannotRunWhileInjured
        }
    }
    // can even use rethrows, if the func. itself doesn't throw an error
    func barkAndRun() throws {
        // can try without catching if the function has throws
        try bark()
        try run()
    }
}

let x=false

if x==true,"abc"=="abc" {
    "ok"
}

enum IntError:Error {
    case noPositiveIntegerBefore(val:Int)
}

func getPreviousPositiveInt(_ int:Int)-> Result<Int,IntError> {
    guard int>0 else {
        return Result.failure(IntError.noPositiveIntegerBefore(val: int))
    }
    return Result.success(int - 1)
}

switch getPreviousPositiveInt(0) {
case let .success(val):
    "\(val) is the previos number"
case let .failure(error):
    switch error {
    case let .noPositiveIntegerBefore(val):
        "\(val) has no previous number"
    }
}
