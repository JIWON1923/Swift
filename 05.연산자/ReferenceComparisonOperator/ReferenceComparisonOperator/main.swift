/*
 - 참조 비교 연산자
    - 참조 타입 클래스의 인스턴스에서만 사용할 수 있다.
    - 사용자 정의 연산자로 사용할 경우는 사용할 수 있다.(다른 연산자가 됨)
 */

let valueA: Int = 3
let valueB: Int = 5
let valueC: Int = 5

let isSameValueAB: Bool = valueA == valueB // false
let isSameValueBC: Bool = valueB == valueC // true

/* 참조 비교 연산자 예시 실행x
let referenceA: SomeClass = SomeClass()
let referenceB: SomeClass = SomeClass()
let referenceC: SomeClass = referenceA
 
let isSameReferenceAB: Bool = referenceA === referenceB // false
let isSameReferenceAC: Bool = referenceA === referenceC // true


 */
