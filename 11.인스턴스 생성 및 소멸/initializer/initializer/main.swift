// 프로퍼티 기본값
// 이니셜라이저를 이용하여 저장 프로퍼티에 초깃값 설정
/*
struct Area{
    var squareMeter: Double
    
    init(){
        squareMeter = 0.0 // 초깃값 할당
    }
}

let room: Area = Area()
print(room.squareMeter) // 0.0
*/



// 프로퍼티에 기본 값 할당하는 방법
struct Area{
    var squareMeter: Double = 0.0 // 프로퍼티 초깃값 할당
}
let room: Area = Area()
print(room.squareMeter)
