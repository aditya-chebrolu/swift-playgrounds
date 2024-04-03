import Foundation

// ==================VARIABLES==================

let a=[1]
//a.append(2) // <<Error : can't append since const>> (not like JS)

var b=[1]
b.append(3)

/*
 NOTES:
 let : declare constant variables; can't reassign values
 var : declare non constant variables;
 */


// ==================OPERATORS==================

let c1 = 4
let c2 = 5

if c1 < c2 {
    print("a is less than b")
}

let foo = !true // unary prefix operator
let optionalName = Optional("aditya")
let name = optionalName! //unary postfix operator
/*
 NOTES:
 1. unary prefix (Ex. !negatedValue)
 2. unary postfix (Ex. notNullValue!)
 3. binary infix (Ex. a+b, a*b)
 */
