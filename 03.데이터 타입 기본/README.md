# 데이터 타입 기본

## 데이터 타입
- 프로그램 내에서 다뤄지는 데이터의 종류
- Swift의 기본 데이터 타입은 구조체 기반으로 다양한 기능(익스텐션, 제네릭 등)을 사용하여 구현되어 있다.
- 대문자 카멜케이스를 사용한다.

---

## [Int와 UInt](https://github.com/JIWON1923/Swift/blob/main/03.데이터%20타입%20기본/IntAndUInt/IntAndUInt/main.swift)
- 공통 정의
    - 정수 타입
    - max, min 프로퍼티로 최댓값과 최솟값을 확인 가능하다.
    - 플랫폼에 따라 최댓값과 최솟값이 달라진다.
        - 64비트 : Int = Int64 / UInt = UInt64가 지정된다.
        - 32비트 : Int = Int32 / UInt = UInt32가 지정된다.
- Int
    - 부호를 포함한 (+, -) 정수 
    
- UInt
    - 0을 포함한 양의 정수

- [진수에 따른 정수 표기](https://github.com/JIWON1923/Swift/blob/main/03.데이터%20타입%20기본/IntegerExpression/IntegerExpression/main.swift)
    - 10진수 : 동일하게 작성
    - 2진수  : 0b (binary)
    - 8진수  : 0o (octal)
    - 16진수 : 0x (hexadecimal)
    ex) 16진수 : let value: Int = 0x1C
    
- TIP
    - Int 범위를 초과하고, UInt로만 표현가능할 때에만 UInt 사용할 것을 권장한다.
    - Int와 UInt는 완전히 다른 타입으로 인식되기 때문에 값을 교환할 때, 많은 자원을 소요할 수도 있기 때문이다.
    
---
    
## [Bool](https://github.com/JIWON1923/Swift/blob/main/03.데이터%20타입%20기본/Bool/Bool/main.swift)
- true, false 값을 갖는 타입
- toggle()을 통해 값 반전이 가능하다.

---

## [Float와 Double](https://github.com/JIWON1923/Swift/blob/main/03.데이터%20타입%20기본/FloatAndDouble/FloatAndDouble/main.swift)
- 공통 정의
    - 부동소수점을 사용하는 실수(부동소수 타입)이다.
    - 소숫점 자리가 있는 수이다.
    
- Double
    - 64비트의 부동 소수를 표현한다.
    - 64비트 환경에서 최소 15자리 십진수를 표현할 수 있음
    
- Float
    - 32비트의 부동 소수를 표현한다.
    - 64비트 환경에서 6자리 숫자 표현 가능
    
---

## [Character](https://github.com/JIWON1923/Swift/blob/main/03.데이터%20타입%20기본/Character/Character/main.swift)

- 단 하나의 문자를 의미한다.
- 유니코드에서 지원하는 언어, 특수기호를 사용할 수 있다.
- 큰따옴표를 사용하여 표현한다.

---

## [String](https://github.com/JIWON1923/Swift/blob/main/03.데이터%20타입%20기본/String/String/main.swift)
- 기본
    - 문자열을 의미한다.
    - 유니코드 9를 사용할 수 있으며, 큰 따옴표를 사용하여 표현한다. 
    - 다양한 메소드와 프로퍼티를 이용해 문자열을 다룰 수 있다.

- 특수문자 (이스케이프 시퀀스)
    - \n : 줄바꿈 문자
    - \\ : 백슬레시
    - \" : 큰따옴표
    - \t : 탭문자
    - \0 : 문자열의 끝을 알리는 null 문자 
    
---

## [Any, AnyObject와 nil](https://github.com/JIWON1923/Swift/blob/main/03.데이터%20타입%20기본/AnyObjectAndnil/AnyObjectAndnil/main.swift)
- Any
    - 모든 데이터 타입을 사용할 수 있다는 의미이다.
    - 변수나 상수가 Any로 지정되어 있다면, 모든 데이터 타입을 할당할 수 있다.
    
- Ant Object
    - 클래스의 인스턴스만 할당할 수 있다.(Any보다 한정된 의미)

- TIP
    - 가능한 사용하지 않는 편이 좋다.
    - 스위프트가 타입에 엄격하기 때문에 매번 타입확인 및 변환 과정이 필요하다.
    - 예기치 못한 오류의 위험을 증가시킨다. (명시하는 것이 좋다)

- nil
    - 특정 타입이 아닌 "없음"을 의미한다.
    - 값이 nil일 때, 접근하면 **잘못된 메모리 접근**으로 런타임 에러가 발생한다.
    - Null point exception

- Never
    - 특정 함수의 반환 타입으로 사용될 수 있다.
