struct CoordinatePoint{
    var x: Int = 0
    var y: Int = 0
}

class Position{
    lazy var point: CoordinatePoint = CoordinatePoint()
    let name: String
    
    init(name: String){
        self.name = name
    }
}

let jiwonPosition: Position = Position(name: "jiwon")

// point 프로퍼티로 처음 접근할 때, point 프로퍼티의 Coordinatepoint가 생성된다.
print(jiwonPosition.point)


/*
 다중 스레드 환경에서 지연 저장 프로퍼티에 동시다발적으로 접근할 때에는 한 번만 초기화된다는 보장이 없다. 생성되지 않은 지연 저장 프로퍼티에 많은 스레드가 비슷한 시점에 접근하면, 여러번 초기화될 수 있다.
 */
