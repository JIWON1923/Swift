prefix operator **

prefix func ** (value: Int) -> Int{ // int 매개변수, int 반환
    return value * value // 거듭제곱 값 반환
}

let valueA: Int = -5
let sqrtValueA: Int = **valueA // 전위 연산자 호출
print(sqrtValueA) //25
