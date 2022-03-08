// 1. 저장 프로퍼티 선언 및 인스턴스 생성
struct CoordinatePoint{
    var x: Int // 저장 프로퍼티
    var y: Int // 저장 프로퍼티
}

// 구조체에는 저장 프로퍼티를 매개변수로 갖는 이니셜라이저가 존재
let jiwonPoint: CoordinatePoint = CoordinatePoint(x: 10, y: 10)

// 사람의 위치 정보
class Position{
    var point: CoordinatePoint // 저장 프로퍼티(변수, 변할 수 있다.)
    let name: String // 저장 프로퍼티 (상수)
    
    // 프로퍼티 기본값이 없다면, 이니셜라이저를 따로 정의해야한다.
    init(name: String, currentPoint: CoordinatePoint){
        self.name = name
        self.point = currentPoint
    }
}


// 사용자 정의 이니셜라이저 호출 (필수)
// 호출하지 않으면, 프로퍼티 초깃값을 할당할 수 없으므로 인스턴스 생성이 불가능하다.
let jiwonPosition: Position = Position(name:"jiwon", currentPoint: jiwonPoint)



// 2. 저장 프로퍼티의 초깃값 지정

struct CoordinatePoint2{
    var x: Int = 0 // 저장 프로퍼티
    var y: Int = 0
}

let jitwoPoint: CoordinatePoint2 = CoordinatePoint2() // 초깃값 넘길 필요 없음
let jitwoPoint2: CoordinatePoint2 = CoordinatePoint2(x:10, y:10) // 초깃값 넘겨도 돼

class Position2{
    var point: CoordinatePoint2 = CoordinatePoint2() // 저장프로퍼티
    var name: String = "Unknown"
    // 초깃값 지정했으므로 init 사용하지 않아도 된다.
}

let jitwoPosition : Position2 = Position2()




// 3. 옵셔널 저장 프로퍼티

struct CoordinatePoint3{
    // 위치는 필수로 존재해야하므로 옵셔널이어서는 안 된다.
    var x: Int
    var y: Int
}

class Position3{
    // 현재 사람의 위치를 모를 수 있음. - 옵셔널
    var point: CoordinatePoint3?
    let name: String
    init(name:String){
        self.name = name
    }
}

// 이름은 필수지만, 위치는 모를 수 있다.
let maisonPosition: Position3 = Position3(name: "maison")
//위치를 알게 되면 그때 할당한다.
maisonPosition.point = CoordinatePoint3(x:20, y:30)
