// 클래스의 인스턴스 메서드
/*
class LevelClass{
    // 저장 인스턴스 - 현재 레벨 저장
    var level: Int = 0{
        // 프로퍼티 감시자 - 값 변경 시 호출됨
        didSet{
            print("Level \(level)")
        }
    }
    
    
    // 레벨업할 때 호출됨
    func levelUp(){
        print("Level UP!")
        level += 1
    }
    
    
    // 레벨 감소
    func levelDown(){
        print("Level Down")
        level -= 1
        if level < 0{
            reset()
        }
    }
    
    
    // 특정 레벨로 이동
    func jumpLevel(to: Int){
        print("Jum[ to \(to)")
        level = to
    }
    
    func reset(){
        print("Reset!")
        level = 0
    }
}


var levelClassInstance: LevelClass = LevelClass()
levelClassInstance.levelUp() // level 1 - level up
levelClassInstance.levelDown() // level 0 - level down
levelClassInstance.levelDown() // level 0 - reset
levelClassInstance.jumpLevel(to: 5) // level 5 - level jump
*/



// muating 키워드
// mutating : 값 타입이므로 해당 메서드가 인스턴스 내부의 값을 변경한다는 것을 명시해야한다.
struct LevelStruct{
    var level: Int = 0{
        didSet{
            print("Level \(level)")
        }
    }
    
    mutating func levelUp(){
        print("Level up!")
        level += 1
    }
    
    mutating func levelDown(){
        print("Level Down")
        level -= 1
        if level < 0{
            reset()
        }
    }
    
    mutating func jumpLevle(to: Int){
        print("Jump to \(to)")
        level = to
    }
    
    mutating func reset(){
        print("reset!")
        level = 0
    }
}

