# 함수
## [함수와 메서드](#함수와-메서드)
## [함수의 정의와 호출](#함수의-정의와-호출)
- 기본적인 함수의 정의와 호출
- 매개변수
- 반환이 없는 함수
## [중첩함수](#중첩함수)
## [종료되지 않는 함수](#종료되지-않는-함수)
## [반환 값을 무시할 수 있는 함수](#반환-값을-무시할-수-있는-함수)

---

## 함수와 메서드
- 스위프트에서 함수는 일급 객체이므로 하나의 값으로 사용가능하다.
    - 일급객체의 조건
        - 전달인자로 전달할 수 있다.
        - 동적 프로퍼티 할당이 가능하다.
        - 변수나 데이터 구조 안에 담을 수 있다.
        - 반환 값으로 사용할 수 있다.
        - 할당할 때 사용된 이름과 관계 없이 고유한 객체로 구별할 수 있다.
    - 즉, 다양한 종류의 함수를 호출, 전달, 반환 등의 동작만으로 프로그램을 구현할 수 있음을 의미한다. 
    - 커링기법 : 전달인자를 하나만 두고 반환하며 사용하는 것
    
- 함수: 전역적으로 사용할 수 있는 함수
- 메서드: 특정 타입에 연관되어 사용하는 함수
    - 즉, 정의하는 위치와 호출되는 범위만 다르다.
    
---
## 함수의 정의와 호출
- [기본적인 함수의 정의와 호출](https://github.com/JIWON1923/Swift/blob/main/07.함수/functionDefinition/functionDefinition/main.swift)


```swift
func 함수이름(매개변수...) -> 반환타입 {
    실행구문
    return 반환값
}
```


    - 함수 내부 코드가 한 줄이고, 그 코드가 반환타입과 일치하다면 return 키워드는 생략 가능하다.
    
- [매개변수](https://github.com/JIWON1923/Swift/blob/main/07.함수/argument/argument/main.swift)
    - 매개변수
        - 함수를 정의할 때 외부로부터 받아들이는 전달 값의 이름
        
    - 전달인자
        - 함수를 실제로 호출할 때 전달하는 값(value)
        
    - [매개변수 이름과 전달인자 레이블](https://github.com/JIWON1923/Swift/blob/main/07.함수/argumentLabel/argumentLabel/main.swift)
         - 전달인자 레이블을 별도로 지정하면, 함수 외부에서 매개변수의 역할을 명확히 할 수 있다.
         - 함수 내부에서 전달인자 레이블은 사용할 수 없고, 함수를 호출할 땐 매개변수 이름을 사용할 수 없다.
         - 전달인자 레이블을 변경하면 함수의 이름자체가 변경된다.
         - 즉, 전달인자 레이블을 다르게 작성하여 함수 중복정의(오버로드)로 동작 가능하다.
         
    - [매개변수 기본값](https://github.com/JIWON1923/Swift/blob/main/07.함수/defaultArguments/defaultArguments/main.swift)
        - 매개변수마다 기본값을 지정할 수 있다.
        - 함수를 중복 정의한 것 처럼 사용 가능하다.
        - 기본 값이 있는 매개변수를 뒷쪽에 배치한다. (중요하지 않은 매개변수일 가능성이 크다)
        - 중요한 매개변수는 앞쪽에서 배치하는 것이 좋다.
    
    - [가변 매개변수와 입출력 매개변수](https://github.com/JIWON1923/Swift/blob/main/07.함수/variadicArguments/variadicArguments/main.swift)
        - 매개변수로 몇 개의 값이 들어올지 모를 때 사용한다.
        - 0개 이상의 값을 받아올 수 있으며, 가변 매개변수로 들어온 인자 값은 배열처럼 사용가능하다.
        - 함수마다 가변 매개변수는 하나만 가질 수 있다.
        
    
- [반환이 없는 함수](https://github.com/JIWON1923/Swift/blob/main/07.함수/voidFunction/voidFunction/main.swift)
    - 반환 타입을 Void로 표기하거나 생략한다.
    
- [데이터 타입으로서의 함수](https://github.com/JIWON1923/Swift/blob/main/07.함수/functionType/functionType/main.swift)
    - 스위프트의 함수는 일급객체이므로 하나의 데이터 타입으로 사용할 수 있다.
        - 각 함수는 매개변수 타입과 반환 타입으로 구성된 하나의 타입으로 정의할 수 있다.
        
        
        ```swift
        (매개변수_타입의_나열) -> 반환_타입
        ```
        
        
    - 함수의 축약 표현
    
    
    ```swift
    sayHello(name: String, times: Int) -> String
    sayHello(name:times:) // 동일한 정의
    ```

    
---
    
## [중첩함수](https://github.com/JIWON1923/Swift/blob/main/07.함수/nestedFunction/nestedFunction/main.swift)
- 일반 함수 : 모든 모듈이 사용할 수 있다.
- 중첩 함수 : 상위 함수의 몸통 블록 내부에서만 사용가능하다.
    - 함수가 하나의 반환 값으로 사용되기 때문에 중첩함수의 결과를 반환하면 밖에서도 사용가능하다.
    
---

## [종료되지 않는 함수](https://github.com/JIWON1923/Swift/blob/main/07.함수/nonreturningFunction/nonreturningFunction/main.swift)
- 비반환 함수 또는 비반환 메서드
    - 이 함수를 실행하면 프로세스 동작은 끝난 것이다.
    - 오류를 던지거나 오류를 보고하는 등의 일을하고 ㅍ로세스를 종료한다. 
    - 어서든 호출이 가능하다. 
    - 비반환 메서드는 재정의는 할 수 있으나, 비반환 타입이라는 것은 변경할 수 있다.
    - 반환 타입을 Never이라 명시하면 된다.

---

## [반환 값을 무시할 수 있는 함수](https://github.com/JIWON1923/Swift/blob/main/07.함수/discardableResult/discardableResult/main.swift)
- @discardableResult
    - 의도적으로 반환 값을 사용하지 않더라도 컴파일러가 경고를 보낼 수 있다.
    - @discardableResult를 사용하여 경고를 무시할 수 있다. =
