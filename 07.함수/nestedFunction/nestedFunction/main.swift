// 원점으로 이동하는 함수 (중첩함수와 일반함수의 구현)

// 1. 중첩함수

typealias moveFunc = (Int) -> Int

func functionForMove(_ shouldGoLeft: Bool) -> moveFunc {
    func goRight(_ currentPosition: Int) -> Int {
        return currentPosition + 1
    }
    
    func goLeft(_ currentPosition: Int) -> Int{
        return currentPosition - 1
    }
    
    return shouldGoLeft ? goLeft(_:) : goRight(_:)
}

var position: Int = -4
let moveToZero: moveFunc = functionForMove(position > 0)

while position != 0{
    position = moveToZero(position)
    print(position)
    
}


//2. 일반 함수
/*
typealias MoveFunc = (Int) -> Int

func goRight(_ currentPosition: Int) -> Int{
    return currentPosition + 1
}

func goLeft(_ currentPosition: Int) -> Int{
    return currentPosition - 1
}

func functionForMove(_ shouldGoLeft: Bool) -> MoveFunc{
    return shouldGoLeft ? goLeft : goRight
}

var position: Int = 3
let moveToZero: MoveFunc = functionForMove(position > 0)

while position != 0{
    print(position)
    position = moveToZero(position)
}
*/
