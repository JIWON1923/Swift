enum School: String, CaseIterable{
    case primary = "유치원"
    case elementary = "초등학교"
    case middle = "중학교"
    case high = "고등학교"
    case university = "대학교"


    static var allCase: [School] {
        let all: [School] = [.primary,
                                .elementary,
                                .middle,
                                .high]
    
        #if os(iOS)
        return all
        #else
        return all + [.university]
        #endif
    }
}

let allCases: [School] = School.allCases
print(allCases)


// 연관 값을 갖는 열거형의 항목 순회 방법
// allCases 프로퍼티를 구현해주어야 한다.

enum PastaTaste: CaseIterable{
    case cream, tomato
}
enum PizzaDough: CaseIterable{
    case cheeseCrust, thin, original
}
enum PizzaTopping: CaseIterable{
    case pepperoni, cheese, bacon
}
enum MainDish: CaseIterable{
    case pasta(taste: PastaTaste)
    case pizza(dough: PizzaDough, topping: PizzaTopping)
    case chicken(withSauce: Bool)
    case rice
    
    static var allCases: [MainDish]{
        return PastaTaste.allCases.map(MainDish.pasta) + PizzaDough.allCases.reduce([]) { (result, dough) -> [MainDish] in result + PizzaTopping.allCases.map{(topping) -> MainDish in MainDish.pizza(dough: dough, topping: topping)}
        }
        + [true, false].map(MainDish.chicken)
        + [MainDish.rice]
    }
}

print(MainDish.allCases.count)
print(MainDish.allCases)
