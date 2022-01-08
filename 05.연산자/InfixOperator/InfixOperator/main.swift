import Foundation // contain method 사용 위해

// MultiplicationPrecedence 지정 안 하면 DefaultPrecedence 그룹으로 지정됨
infix operator **: MultiplicationPrecedence

func ** (lhs: String, rhs: String) -> Bool{
    return lhs.contains(rhs)
}

let hello: String = "Hello Jiwon"
let name: String = "Jiwon"
let isContainsName: Bool = hello ** name // true
print(isContainsName)
