import Foundation

//@discardableResult() : if functions returns a value but you don't want to use it.
func abc(extVar intVar:Int)->Int {
    intVar
}
abc(extVar: 2)

func def(_ intVar:Int){
    print("hi")
}

def(10)

func ghi(_ brr:Int=20){
    print("ok \(brr)")
}
ghi()
