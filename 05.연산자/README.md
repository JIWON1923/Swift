# 연산자

## 연산자 종류

### 할당 연산자
### [산술 연살자](https://github.com/JIWON1923/Swift/blob/main/05.연산자/ArithmeticOperation/ArithmeticOperation/main.swift)
### 비교 연산자
### [삼항 조건 연산자](https://github.com/JIWON1923/Swift/blob/main/05.연산자/ConditionThrnaryOperation/ConditionThrnaryOperation/main.swift)
### 범위 연산자
### 부울 연산자
### 비트 연산자
### 복합 할당 연산자
### [오버플로 연산자](https://github.com/JIWON1923/Swift/blob/main/05.연산자/OverflowOperator/OverflowOperator/main.swift)
### [기타 연산자](https://github.com/JIWON1923/Swift/blob/main/05.연산자/ReferenceComparisonOperator/ReferenceComparisonOperator/main.swift)

## 사용자 정의 연산자

### [전위 연산자 정의와 구현](https://github.com/JIWON1923/Swift/blob/main/05.연산자/prefixOperator/prefixOperator/main.swift)
### [후위 연산자 정의와 구현](https://github.com/JIWON1923/Swift/blob/main/05.연산자/PostfixOperator/PostfixOperator/main.swift)
### [중위 연산자 정의와 구현](https://github.com/JIWON1923/Swift/blob/main/05.연산자/InfixOperator/InfixOperator/main.swift)

---

## 연산자 종류
### 할당 연산자
- A = B
    - A에 B의 값을 할당한다.
    - 서로 다른 데이터 타입이면 오류가 발생한다. (컴파일 오류, 데이터 타입 안심)

### 산술 연산자
- A + B
- A - B
- A * B
- A / B
- A % B

### 비교 연산자 (return Bool)
- A == B
- A >= B
- A <= B
- A > B
- A < B
- A != B
- A === B
    - 참조의 비교( 같은 인스턴스를 가리키는지 비교)
- A !== B
    - 참조의 비교 (다른 인스턴스를 가리키는지 비교)
- A ~= B
    - A와 B의 패턴이 매치되는지 확인
    
### 삼항 조건 연산자
- Question ? A : B
    - Question이 참이면 A, 거짓이면 B를 반환
    
### 범위 연산자
- A...B
    - A부터 B까지의 모든 수 (A, B 포함)
- A.. < B
    - A부터 B미만까지의 모든 수 (A 포함, B 미포함)
- A...
    - A 이상의 수 (A 포함)
- ...A
    - A 이하의 수 (A 포함)
- .. < A
    - A 미만의 수 (A 미포함)

### 부울 연산자
- !A
    - Bool(A)의 값 반전
- A && B
    - A와 B의 AND 논리연산
- A || B
    - A와 B의 OR 논리연산

### 비트 연산
- ~A
    - A의 비트를 반전시킨다.
- A & B
    - A와 B 비트의 AND 논리연산
- A | B
    - A와 B 비트의 OR 논리연산
- A ^ B
    - A와 B 비트의 XOR 논리연산
- A >> B
- A << B
    - A의 비트를 B만큼 시프트(이동)
    
### 복합 할당 연산자
- A += B
    - A = A + B
- A -= B
    - A = A - B
- A *= B
    - A = A * B
- A /= B
    - A = A / B
- A %= B
    - A = A % B
- A <<= N
    - A = A << N
- A &= B
    - A = A & B
- A |= B
    - A = A | B
- A ^= B
    - A = A ^ B

### 오버플로 연산자
- 오버플로 연산자를 사용하면 오버플로는 자동으로 처리한다.
- &+
    - 오버플로에 대비한 덧셈 연산 
- &-
    - 오버플로에 대비한 뺄셈 연산
- &*
    - 오버플로에 대비한 곱셈 연산
    
### 기타 연산자
- A ?? B
    - A가 nil이 아니면 A를 반환하고, nil이면 B를 반환한다. (nil 병합 연산자)
- -A
    - A의 부호를 변경한다.
- O!
    - 옵셔널 개체(O)의 값을 강제로 추출한다. (옵셔널 강제 추출 연산자)
- V?
    - 옵셔널 값(V)를 안전하게 추출하거나 데이터 타입(V)가 옵셔널임을 표현한다. (옵셔널 연산자)

## 사용자 정의 연산자
### 전위 연산자 정의와 구현


```swift
prefix operator **
```


### 후위 연산자 정의와 구현


```swift
postfix operator **
```


- 하나의 피연산자에 전위 연산과 후위연산을 한 줄에 사용하게 되면, ** 후위연산을 먼저 ** 수행한다.

### 중위 연산자 정의와 구현


```swift
precedencegroup 우선순위 그룹{
    higherThan: 더 낮은 우선순위 그룹 이름
    lowerThan: 더 높은 우선순위의 그룹 이름
    associativity: 결합 방향(left/right/none)
    assignment: 할당방향 사용 (true/ false)
}
```

