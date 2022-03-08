// 이니셜라이저 매개변수
struct Area{
    var squareMeter: Double
    init(fromPy py: Double){ // 첫 번째 이니셜라이저
        squareMeter = py * 3.3058
    }
    
    init(fromSqureMeter squareMeter: Double){ // 두 번째 이니셜라이저
        self.squareMeter = squareMeter
    }
    
    init(value: Double){ // 세 번째 이니셜라이저
        squareMeter = value
    }
    
    init(_ value: Double){ // 네 번째 이니셜라이저
        squareMeter = value
    }
}

let roomOne: Area = Area(fromPy: 15.0)
print(roomOne) // 49.587

let roomTwo: Area = Area(fromSqureMeter: 33.06)
print(roomTwo)// 33.06

let roomThree: Area = Area(value: 30.0)
print(roomThree) // 30.0

let roomFour: Area = Area(55.0)
print(roomFour) // 55.0

//Area() // 오류 - init을 구현하지 않는 한 사용할 수 없다.
