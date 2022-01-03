// 특정 항목에 순환 열거형 항목 명시
enum ArithmeticExpression{
    case number(Int)
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
}

// 열거형 전체에 순환 열거형 명시
indirect enum ArithmeticExpression2{
    case number(Int)
    case addition(ArithmeticExpression2, ArithmeticExpression2)
    case multiplication(ArithmeticExpression2, ArithmeticExpression2)
}

// 순환 열거형 사용
// 이진탐색 트리 등 순환 알고리즘을 구현할 때에도 유용하게 사용할 수 있다.
let five = ArithmeticExpression2.number(5)
let four = ArithmeticExpression2.number(4)
let sum = ArithmeticExpression2.addition(five, four)
let final = ArithmeticExpression2.multiplication(sum, ArithmeticExpression2.number(2))

func evaluate(_ expression: ArithmeticExpression2) -> Int{
    switch expression{
    case .number(let value):
        return value
    case .addition(let left, let right):
        return evaluate(left) + evaluate(right)
    case .multiplication(let left, let right):
        return evaluate(left) * evaluate(right)
    }
}

let result: Int = evaluate(final)
print("(5+4) * 2 = \(result)")
