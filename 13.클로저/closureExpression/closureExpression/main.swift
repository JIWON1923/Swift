// 클로저 표현의 간소화

let names = ["meison", "jiwon", "zest"]

// 1. 문맥을 이용한 타입 유추
// 매개변수의 타입이나 반환 값의 타입을 생략할 수 있다.
let reversed: [String] = names.sorted{(first, second) in
    return first > second
}

// 2. 단축인자 표현
// 매개변수 및 반환타입, 실행코드 구분하기 위해 사용했던 in 키워드를 사용할 필요가 없다.
let reversed2: [String] = names.sorted{
    return $0 > $1
}

// 3. 암시적 반환 표현
// 클로저가 반환 값을 갖고, 실행문이 한 줄이라면, 암시적으로 해당 코드가 반환 값으로 사용된다.
let reversed3: [String] = names.sorted{ $0 > $1 }

// 4. 연산자 함수 사용
let reversed4: [String] = names.sorted(by: >)
