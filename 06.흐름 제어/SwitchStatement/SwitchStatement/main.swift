// 1. 기본 switch 구문 (타입은 String, Double, tuple 등 사용가능)

let integerValue:Int = 5

switch integerValue{
case 0:
    print("Value == zero")
case 1...10:
    print("Value == 1~10")
case Int.min..<0, 101..<Int.max:
    print("Value < 0 or Value > 100")
default:
    print("10 < Value <= 100")
}

// 와일드카드 식별자를 사용한 switch 문
typealias NameAge = (name:String, age:Int)
let tupleValue: NameAge = ("jiwon", 24)

switch tupleValue{
case ("jiwon", 25):
    print("맞았습니다.")
case ("jiwon", _ ):
    print("이름만 맞았습니다.")
case (_, 25):
    print("나이만 맞았습니다. 이름은 \(tupleValue.name)입니다.")
default:
    print("누굴 찾나요?")
}

// 값 바인딩을 사용한 튜플 switch 문
typealias AgeName = (age:Int, Name:String)
let tupleValue2: AgeName = (24, "jiwon")

switch tupleValue2{
case (25, "jiwon"):
    print("맞았습니다.")
case (25, let name):
    print("나이만 맞았습니다. \(name)")
case (let age, "jiwon"):
    print("이름만 맞았습니다 \(age)")
default:
    print("누굴 찾나요?")
}

// 열거형을 사용하는 switch 문
enum School{
    case primary, elementary, middle, high, college, university, graduate
}

let 최종학력: School = School.university

switch 최종학력{
case .primary:
    print("최종학력은 유치원입니다")
case .elementary:
    print("최종학력은 초등학교입니다.")
case .middle:
    print("최종학력은 중학교입니다.")
case .high:
    print("최종학력은 고등학교입니다.")
case .college, .university:
    print("최종학력은 대학교입니다.")
case .graduate:
    print("최종학력은 대학원입니다.")
// default => case _:로 표현 가능
// @unknown case _: enum 요소가 추가되었을 때 
}
