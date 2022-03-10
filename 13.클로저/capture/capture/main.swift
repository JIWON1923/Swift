// 주변 문맥을 통한 값 획득

func makeIncrementer(forIncrement amount: Int) -> (() ->Int){
    var runningTotal = 0
    func incrementer() -> Int{
        // 주변 변수의 참조를 획득 -> makeIncrementer 함수가 끝나도, 사라지지 않고 incrementer가 호출될 때마다 사용할 수 있다.
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

// increment함수 할당
// first, second, third는 같은 참조를 갖는다.
let incrementByTwo: (() -> Int) = makeIncrementer(forIncrement: 2)
let first: Int = incrementByTwo() // 2
let second: Int = incrementByTwo() // 4
let third: Int = incrementByTwo() // 6

// increment함수 할당
// 위와 다른 참조 값을 갖는다.
let incrementByTen: (()->Int) = makeIncrementer(forIncrement: 10)
let first2: Int = incrementByTen() // 10
let second2: Int = incrementByTen() // 20
