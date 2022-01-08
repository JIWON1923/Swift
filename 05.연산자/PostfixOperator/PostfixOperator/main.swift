postfix operator **

postfix func ** (value: Int) -> Int{
    return value + 10
}

let valueA: Int = 5
let result: Int = valueA**

print(result) // 15

// 하나의 피연산자에 전위 연산과 후위 연산이 있을 경우, 후위 연산을 먼저 수행한다.

postfix operator ***
prefix operator ***

prefix func *** (value: Int) -> Int{
    return value * value
}

postfix func *** (value: Int) -> Int{
    return value + 10
}

let valueB: Int = 0
print( ***valueB***) // (0+10) * 10 후위 연산자 먼저 !!
