// 1. 클로저 사용
let numbers: [Int] = [0, 1, 2, 3, 4]

// 기본 클로저 표현식
var doubledNumbers = numbers.map({ (number: Int) -> Int in
    return number * 2
})

// 매개변수 및 반환 타입 생략
doubledNumbers = numbers.map({return $0 * 2})
print(doubledNumbers)

// 반환 키워드 생략
doubledNumbers = numbers.map({$0 * 2})

// 후행 클로저 사용
doubledNumbers = numbers.map {$0 * 2}



// 2. 클로저의 반복 사용
let evenNumbers: [Int] = [0, 1, 2, 3, 4]
let oddNumbers: [Int] = [0, 1, 3, 5, 7]
let multiplyTwo: (Int) -> Int = {$0 * 2}

let doubledNumbers2 = evenNumbers.map(multiplyTwo)
print(doubledNumbers2)

let doubledOddNumbers = oddNumbers.map(multiplyTwo)
print(doubledOddNumbers)
