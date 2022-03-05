// 클래스 정의
class Person{
    // 생성
    var height: Float = 0.0
    var weight: Float = 0.0
    
    //소멸
    deinit{
        print("Person 클래스의 인스턴스의 소멸")
    }
}


// 클래스의 인스턴스 생성 및 사용
var jiwon: Person = Person()
jiwon.height = 123.4
jiwon.weight = 123.4

// let으로 선언해도 내부 프로퍼티 값 변경 가능하다.
let maison: Person = Person()
maison.height = 123.4
maison.weight = 123.4

var Jiwon: Person? = Person()
Jiwon = nil // 소멸
