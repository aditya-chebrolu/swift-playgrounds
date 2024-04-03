import Foundation

let add:(Int,Int)->Int = {
    (a:Int,b:Int)->Int in a+b
}

add(2,2)


func customAdd(
    a:Int,
    b:Int,
    cb:(Int,Int)->Int
)->Int
{
    cb(a,b)
}
// Note : only works when the cb function is placed at the end.
// way 1
customAdd(a: 4, b: 0, cb: {
    (c:Int,d:Int)->Int in c+d}
)
// way 2 : type inference. (compiling slower, since type inference)
customAdd(a: 2, b: 4) { (c,d) in c+d }

// way 3 : more simpler.
customAdd(a:2,b:4){$0 + $1}

// $0 : gives the first argument of the function, $1 : gives the second and so on....


let ages=[4,2,1,3]
ages.sorted(by: <) // infix operator is kindof closure function (a:Int,b:Int)->Bool {a<b}
