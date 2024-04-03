import Foundation

func fxn(_ value:Int?=nil)->Int {
    // if let used to check for nil values
    if let value {
        return value*2
    } else {
        return 0
    }
}


fxn()
fxn(nil)
fxn(2)

var age:Int? = nil
func CheckAge() {
    guard age != nil else {
        "age is nil"
        return // return is importanrt in guard
    }
    let x=age // here age is still optional. the function doesnt understand. To fix this we use guard let
    
}

let age1:Int? = 0
func checkAge1() {
    guard let age1 else {
        "age is nil"
        return
    }
    let x=age1
}

var optionalName:String? = "Aditya"

if optionalName != nil {
    "Hi, \(optionalName)"  // Hi, Optional("Aditya")
    "Hi, \(optionalName!)" // Hi, Aditya
    
}

if let name = optionalName {
    "Hi \(name)"
}

if let optionalName { // No question mark needed; if optionalName is not nil, name will be bound to its unwrapped value
    "Hi \(optionalName)"
}

switch optionalName {
case let name?: // The question mark ? indicates that this case should match only if optionalName is not nil
    print("Hello, \(name)") // This will execute when optionalName is not nil
case nil:
    print("Name is nil")    // This will execute when optionalName is nil
}

switch optionalName {
case let .some(name):
    print("Hello, \(name)") // This will execute when optionalName contains a non-nil value
case .none:
    print("Name is nil")    // This will execute when optionalName is nil
}
// ??
if case let .some(val)=optionalName {
    "\(val)"
}

var optionalVal:Int? = nil
// implicit unwrapping
var implicitUnwrappedVal:Int! = optionalVal


func fxn2() {
    guard let implicitUnwrappedVal else {
        "val is nil"
        return
    }
}
fxn2()


var optValWithNil:Int? = nil
//var val:Int=optValWithNil // <Error : cant force unwrap nil>
var optVal:Int? = 4
var val:Int=optVal!






/*
// NOTE:
// 1. 'if let' is used check for nil
// 2. guards are reuqired to check if condition fails. return is important in guard.
// 3. guards can only be placed inside fxn.
// 4. can unwrap optionals with ! or let
*/
