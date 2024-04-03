import Foundation

// way 1
func op1<N:Numeric>(
    _ op:(N,N)->N,
    _ a:N,
    _ b:N
)-> N {
    return op(a,b)
}

op1(+,2,2)
op1(*,2,3)

// way 2
func op2<N,O>(
_ op:(N,O)->N,
_ a:N,
_ b:O
) -> N where N: Numeric, O: Numeric {
    return op(a,b)
}



protocol Bird {
    func canFly()
}

protocol Fish {
    func canSwim()
}

struct Animal:Bird,Fish {
    func canFly() {
        print("fly")
    }
    
    func canSwim() {
        print("swim")
    }
}

func canSwimAndFly<N:Bird&Fish>(_ input:N){
    input.canFly()
    input.canSwim()
}

let animal=Animal()
canSwimAndFly(animal)



extension [String] {
    func longestString() -> String? {
        self.sorted { lhs, rhs in
            lhs.count > rhs.count
        }.first
    }
}

let arr: [String]=["a","bbb","cc"]
arr.longestString()


protocol View {
    func render()
}

struct Button:View {
    func render() {
        "rendering button"
    }
}

struct Card:View {
    func render() {
        "rendering card"
    }
}

protocol PresentableAsView {
    associatedtype ViewType:View
}

//notes
