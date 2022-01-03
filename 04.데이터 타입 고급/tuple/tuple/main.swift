// 기본 튜플 사용법
var person: (String, Int, Double) = ("jiwon", 25, 162.3)
print("이름: \(person.0), 나이: \(person.1), 키: \(person.2)")

// 튜블 요소 이름 지정
typealias PersonTuple = (name: String, age: Int, height: Double)
let jiwon: PersonTuple = ("jiwon", 25, 162.3)
print("이름: \(jiwon.name), 나이:\(jiwon.age), 키:\(jiwon.height)")
