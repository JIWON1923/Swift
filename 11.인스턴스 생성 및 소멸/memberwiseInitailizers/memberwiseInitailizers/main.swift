// 멤버와이즈 이니셜라이저
struct Point{
    var x: Double = 0.0
    var y: Double = 0.0
}

struct Size{
    var width: Double = 0.0
    var height: Double = 0.0
}

let point: Point = Point(x: 0, y: 0)
let size: Size = Size(width: 50.0, height: 50.0)

// 구조체의 저장 프로퍼티에 기본값이 있다면, 필요한 매개변수만 사용하여 초기화할 수 있다.
let somePoint: Point = Point()
let someSize: Size = Size(width: 50)
let anotherSize: Size = Size(height: 50)

// 클래스는 멤버와이즈 이니셜라이즈를 지원하지 않는다.
