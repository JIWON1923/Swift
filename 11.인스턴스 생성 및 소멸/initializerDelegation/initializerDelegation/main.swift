enum Student{
    case elementary, middle, high
    case none
    // 사용자 정의 이니셜라이저가 있다면, init() 메서드를 구현해주어야 기본 이니셜라이저를 사용할 수 있다.
    init(){
        self = .none
    }
    
    init(koreanAge: Int){ // 첫 번째 사용자 정의 이니셜라이저
        switch koreanAge{
        case 8...13:
            self = .elementary
        case 14...16:
            self = .middle
        case 17...19:
            self = .high
        default:
            self = .none
        }
    }
    
    init(bornAt:Int, currentYear: Int){ // 두 번째 사용자 정의 이니셜라이저
        // 첫 번째 이니셜라이저에 초기화를 위임하여 효율적으로 이니셜라이저를 만든다.
        self.init(koreanAge: currentYear - bornAt + 1)
    }
}

var younger: Student = Student(koreanAge: 16)
print(younger) // middle

younger = Student(bornAt: 1998, currentYear: 2022)
print(younger) // none
