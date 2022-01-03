# 데이터 타입 고급

## 데이터 타입 안심

- 타입 안심(Type-Safe)
    - 서로 다른 타입의 값을 할당할 때 컴파일 오류가 발행산다.
    - 컴파일 시 타입을 확인하는 것을 **타입확인**이라고 한다.
    - 런타임 오류를 피할 수 있다는 장점이 있다.
    
- 타입추론
    - 특정 타입을 명시하지 않으면, 컴파일러가 타입을 결정한다.

---

## [타입 별칭](https://github.com/JIWON1923/Swift/blob/main/04.데이터%20타입%20고급/typeAlias/typeAlias/main.swift)
- 기본 데이터 타입이나, 사용자 정의 타입도 별칭을 부여할 수 있다.


```swift
typealias MyInt = Int
typealias YourInt = Int
    
let age: MyInt = 100
let year: YourInt = 2021
```


- 위 코드에서 MyInt와 YourInt는 같은 타입 (Int)로 취급한다.
    
---
    
## [튜플](https://github.com/JIWON1923/Swift/blob/main/04.데이터%20타입%20고급/tuple/tuple/main.swift)
- 이름이 지정되지 않은 타입으로, 지정된 데이터의 묶음이다. (C의 원시 구조체와 비슷함)
- Index로 각 원소에 접근할 수 있다.
- Index별 이름을 지정할 수 있다. (원활한 접근 가능)
- 튜플의 별칭을 지정할 수 있다.(깔끔하고 안전한 접근 가능)


(1) index 접근 코드
- 간편해보이지만, 각 요소의 의미가 명확하지 않다.


```swift
var Person: (String, Int, Double) = ("jiwon", 24, 163.5)
print("이름: \(person.0), 나이: \(person.1), 신장:(person.2)")
```


(2) Index 별 이름 지정


```swift
var person:(name:String, age:Int, height: Double) = ("jiwon", 24, 163.5)
print("이름: \(person.name), 나이: \(person.age), 신장:(person.height)")
```


(3) 튜플에 별칭 지정


```swift
typealias PersonTuple = (name:String, age:Int, height:Double)
let Jiwon: PersonTuple = ("jiwon", 24, 163.5)
let Jiwon2022: PersonTuple = ("jiwon", 25, 164)

print("이름: \(jiwon.name), 나이: \(jiwon.age), 신장:(jiwon.height)")
print("이름: \(jiwon2022.name), 나이: \(jiwon2022.age), 신장:(jiwon2022.height)")
```

    
---

## 컬렉션형

- 데이터를 묶어서 저장하고, 관리할 수 있는 타입이다. (배열, 딕셔너리, 세트)

- 1) [배열 (Array)](https://github.com/JIWON1923/Swift/blob/main/04.데이터%20타입%20고급/CollectionType/CollectionType/main.swift)
    - 같은 타입의 데이터를 순서대로 저장하는 형태이다.
    - Buffer지만, 필요에 따라 자동으로 크기를 조절해준다.
    - 이에 요소의 삽입과 삭제가 자유롭다.
    - var로 선언 시 변경 가능, let으로 선언 시 변경 불가능한 배열이 된다.
    - 인덱스로 접근하며, 잘못된 인덱스로 접근 시 **Exception Error**가 발생한다.
    
    
    ```swift
    var names: Array<String> = ["jiwon", "jiwon lee", "wonji", "jiwon"]
    ```


    - 프로퍼티
        - firt, last : 맨 첫 요소와 맨 마지막 요소 가져온다.
        - firstIndex(of: ) : 해당 요소의 인덱스를 반환한다.
        - append(of: ) : 맨 뒤에 요소를 추가한다.
        - insert(_: at:) : 중간에 요소를 삽입한다.
        - remove(_:) : 요소가 삭제된 후 반환된다.
    
- 2) [딕셔너리 (Dictionary)](https://github.com/JIWON1923/Swift/blob/main/04.데이터%20타입%20고급/Dictionary/Dictionary/main.swift)
    - 요소들이 키와 쌍으로 구성되는 컬렉션 타입이다.
    - 키는 하나이거나 여러개일 수 있다.
    - 키는 중복 불가능하다.(유일한 식별자)
    - 각 값은 키로 접근한다. 
    - 없는 키 값으로 접근하면 nil을 반환한다. (오류 발생 없음)
    
    
    ```swift
    var numberForName: Dictionary<String, Int> = Dictionary<String, Int>()
    typealias StringIntDictionary = [String: Int]
    ```


- 3) [세트 (Set)](https://github.com/JIWON1923/Swift/blob/main/04.데이터%20타입%20고급/Set/Set/main.swift)
    - 같은 타입의 데이터를 순서 없이 하나의 묶음으로 저장하는 컬렉션 타입이다.
    - 중복된 값이 존재하지 않다.
    - 순서가 중요하지 않거나, 중복이 없어야하는 경우에 사용한다.
    - 해시 가능한 값이 들어와야 한다. 
    - (참고) 스위프트의 모든 기본 데이터 타입은 모두 해시 가능한 값이다. 
    
    
    ```swift
    var names = Set<String> = set<String>()
    var names: Set <string> = []
    ```


---

## [열거형](https://github.com/JIWON1923/Swift/blob/main/04.데이터%20타입%20고급/enum/enum/main.swift)
- 연관된 항목들을 묶어서 표현할 수 있는 타입이다.
- 프로그래머가 정의해준 항목 값 이외에는 추가/수정이 불가능하다.
    - 제한된 선택지를 주고 싶을 때
    - 정해진 값 이외에는 입력받고 싶지 않을 때
    - 예상된 입력 값이 한정되어 있을 때 사용한다.

- 기본 열거형


```swift
enum School { 
case primary
case elementary
case middle
case high
case college
case university
case graduate
}
```


```swift
enum School{
    case primary, elementary, middle, high, colleage, university, graduate
}

var educationLevel: School = School.university
// 또는
var educationLevel: School = .university
// 값 변경
educationLevel = .graduate
```

- 원시값
    - 각 항목의 원시 값을 설정할 수 있다.
    - rawValue를 통해 접근 가능하다.
    
- 연관값
    - 열거형 내 항목이 연관된 값을 가질 수 있다.
    - 소괄호로 묶어 표현한다.

- [항목 순회](https://github.com/JIWON1923/Swift/blob/main/04.데이터%20타입%20고급/enumCaseIterableProtocol/enumCaseIterableProtocol/main.swift)
    - CaseIterable 프로토콜 사용
    - 모든 케이스의 컬렉션을 생성해준다. 
    - allCase 직접 구현해야하는 경우도 있다.
        - 플랫폼 별 사용 조건을 추가하는 경우
- [순환 열거형](https://github.com/JIWON1923/Swift/blob/main/04.데이터%20타입%20고급/RecursiveEnum/RecursiveEnum/main.swift)
    - indirect 키워드를 사용한다.(항목 또는 열거형 전체)
    - 이진 탐색 트리 등의 순환 알고리즘을 구현할 때 유용하게 사용할 수 있다.

- [비교 가능한 열거형](https://github.com/JIWON1923/Swift/blob/main/04.데이터%20타입%20고급/ComparableEnum/ComparableEnum/main.swift)
    - Compare 프로토콜을 준수하는 열거형은 각 케이스를 비교할 수 있다.
    - 연간 값만 갖거나, 연관 값이 없는 열거형만 가능
