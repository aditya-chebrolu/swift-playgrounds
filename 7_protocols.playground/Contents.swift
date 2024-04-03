import Foundation


// Protocols = Interfaces


protocol AnimalActions {
    func canWalk()
}

struct Animal:AnimalActions {
    func canWalk() {
        "Animal can walk."
    }
}


let a1=Animal()
a1.canWalk()

protocol PlayerInfo {
//    let x:String // <Error : Protocols cannot require properties to be immutable; declare read-only properties by using 'var' with a '{ get }' specifier>
    var element:String {get}
    var weapon:String {get set}
    func specialMove()
}

extension PlayerInfo {
    func specialMove() {
      "executing special move"
    }
}

struct Player:PlayerInfo {
    let element: String
    var weapon: String
}

var p1=Player(element: "fire", weapon: "Katana")
p1.specialMove()
p1.element
//p1.weapon="Blades"
//p1.weapon
