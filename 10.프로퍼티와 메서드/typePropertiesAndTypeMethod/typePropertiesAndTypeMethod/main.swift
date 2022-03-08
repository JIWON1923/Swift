// 시스템 음량은 한 기기에서 유일한 값
struct SystemVolume{
    // 타입 프로퍼티 사용 - 언제나 유일한 값이 된다.
    static var volume: Int = 5
    
    // 타입 메서드 - 타입 프로퍼티 제어
    static func mute(){
        self.volume = 0
    }
}


// navigation - 여러 인스턴스가 수행 가능
class Navigation{
    
    // 인스턴스마다 음량 설정 가능
    var volume: Int = 5
    
    // 길 안내 음성 재생
    func guideWay(){
        // 네비 외 다른 재생원 음소거
        SystemVolume.mute()
    }
    
    // 길 안내 음성 종료
    func finishGuideWay(){
        SystemVolume.volume = self.volume
    }
}

SystemVolume.volume = 10
let myNavi: Navigation = Navigation()

myNavi.guideWay()
print(SystemVolume.volume) // 0

myNavi.finishGuideWay()
print(SystemVolume.volume) // 5
