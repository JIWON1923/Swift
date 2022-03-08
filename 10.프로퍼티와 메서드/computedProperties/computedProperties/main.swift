// 연산 프로퍼티

/*
// 1. 메서드로 구현(접근자, 생성자)
struct CoordinatePoint{
    var x: Int // 저장 프로퍼티
    var y: Int
    
    // 대칭점을 구하는 메서드 - 접근자
    func oppositePoint() -> Self{
        // Self - 타입 자기 자신 (CoordinatePoint 사용 가능)
        return CoordinatePoint(x: -x, y: -y)
    }
    
    // 대칭점 설정 메서드 - 설정자
    mutating func setOppositePoint(_ opposite: CoordinatePoint){
        x = -opposite.x
        y = -opposite.y
    }
}

var jiwonPosition: CoordinatePoint = CoordinatePoint(x: 10, y: 20)

// 현재 좌표
print(jiwonPosition)
// 대칭 좌표
print(jiwonPosition.oppositePoint())

// 대칭 좌표 값 변경
jiwonPosition.setOppositePoint(CoordinatePoint(x:15, y:10))
print(jiwonPosition) // 현재 좌표 값도 변경된다. (설정자)
 */



// 2. 연산 프로퍼티 정의와 사용
/*
struct CoordinatePoint{
    var x: Int
    var y: Int
    
    // 대칭 좌표
    var oppositePoint: CoordinatePoint{ // 연산 프로퍼티
        // 접근자
        get{
            return CoordinatePoint(x: -x, y: -y)
        }
        
        // 설정자
        set(opposite){
            x = -opposite.x
            y = -opposite.y
        }
    }
}

var jiwonPosition: CoordinatePoint = CoordinatePoint(x:10, y:20)
print(jiwonPosition)
print(jiwonPosition.oppositePoint)
jiwonPosition.oppositePoint = CoordinatePoint(x:15, y: 20)
print(jiwonPosition)
*/


// 3. 매개변수 이름을 생략한 설정자
/*
struct CoordinatePoint{
    var x: Int
    var y: Int
    
    // 대칭 좌표
    var oppositePoint: CoordinatePoint{
        get{
            return CoordinatePoint(x: -x, y: -y)
            // return 키워드 생략 가능 (스위프트 문법)
        }
        
        set{
            x = -newValue.x
            y = -newValue.y
        }
    }
}
*/


// 4. 읽기 전용 연산 프로퍼티
struct CoordinatePoint{
    var x: Int
    var y: Int
    
    var oppositePoint: CoordinatePoint{
        get{
            CoordinatePoint(x: -x, y: -y)
        }
    }
}

var jiwonPosition: CoordinatePoint = CoordinatePoint(x:10, y:20)
print(jiwonPosition)
print(jiwonPosition.oppositePoint)

