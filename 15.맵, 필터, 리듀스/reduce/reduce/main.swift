let numbers: [Int] = [1, 2, 3]

// reduce(_:_:) 메서드 (첫 번째 형태)
// 초깃 값 = 0이고, 정수 배열의 보든 값을 더함
var sum: Int = numbers.reduce(0, { (result: Int, next: Int) -> Int in
    print("\(result) + \(next)")
    return result + next
})

print(sum) // 6

// 초깃값은 0, 정수 배열의 모든 값을 뺀다.
var subtrack: Int = numbers.reduce(0, { (result: Int, next: Int) -> Int in
    print("\(result) - \(next)")
    return result - next
})

print(subtrack) // -6

// 초깃값 =3, 정수 배열의 모든 값을 더한다
let sumFromThree: Int = numbers.reduce(3){
    print("\($0) + \($1)")
    return $0 + $1
}

print(sumFromThree) // 9

// 문자열 배열의 연결
let names: [String] = ["Chope", "Jay", "Joker"]
let reducedName: String = names.reduce("Jiwon's friend : "){
    return $0 + ", " + $1
}
print(reducedName)

// 두 번째 형태의 reduce(into:_:) method
sum = numbers.reduce(into: 0, { (result: inout Int, next: Int) in
    print("\(result) + \(next)")
    result += next
})
print(sum) // 6
