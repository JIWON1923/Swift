let number: Double = 5.0

// 부동소수점 타입의 나머지 연산
var result: Double = number.truncatingRemainder(dividingBy: 1.5) // 0.5
result = 12.truncatingRemainder(dividingBy: 2.5) // 2.0

// 나누기 연산 -> 소수점을 제외한 정수만 결과값으로 반환한다.
var result2: Int = 5 / 3 // 1
result2 = 10 / 3 // 3
// 데이터 타입에 엄격한 스위프트는 다른 자료형끼리의 연산을 제한한다.
