import Foundation


enum Animals {
    case cat
    case dog
    case hippo
//    case rabbit, lion, tiger
//    case giraffe,
//    elephant
}


let a1=Animals.cat

if a1==Animals.cat {print("a1 is cat")}

// Note: switch must be exhaustive i.e. list all options or add default.
switch a1 {
case .cat:
    "Cat"
    break;
case .dog:
    "Dog"
    break;
default:
    "Others"
}


enum Shortcut {
    case file(path:URL,name:String)
    case wwwUrl(path:URL)
    case song(artist:String,songName:String)
}

let wwwPortfolio=Shortcut.wwwUrl(path: URL(string:"https://adityachebrolu.com")!)

//if wwwPortfolio == .wwwUrl(path: URL(string:"https://adityachebrolu.com")!) {
//    "equal"
//} <Error : can't equate>


switch wwwPortfolio {
    case .file(path: let p, name: let n): //way 1
        print("\(p)-\(n)")
        break;
    case .wwwUrl(let url): // way 2
        print(url)
        break;
    case let .song(a,n): // way 3
        print("\(a)-\(n)")
        break;
}

if case let .wwwUrl(path) = wwwPortfolio {
    path
}


let oNavvuChaalu=Shortcut.song(artist: "Shankar Mahadevan", songName: "O Navvu Chaalu")

if case let .song(_,name) = oNavvuChaalu {
    name
}


enum Cars {
    case ford , nissan, ferrari, buggati
    
    var title:String {
        switch self {
        case .buggati: return "Buggati"
        case .nissan: return "Nissan"
        case .ford: return "Ford"
        case .ferrari: return "Ferrari"
        }
    }
}

let c1=Cars.buggati

c1.title


enum Vehicle {
    case car(manufacturer:String,model:String),bike(manufacturer:String,type:String)
    
    var getType : String {
        
        switch self {
        case let .car(_, type),let .bike(_, type):
            return type
        }
    }
}

var v1=Vehicle.car(manufacturer: "Ferrari", model: "F1")
v1.getType

v1=Vehicle.bike(manufacturer: "Duccati", type: "Race")

