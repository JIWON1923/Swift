// enum 선언 방법 2가지
enum School {
    case primary // 유치원
    case elementary // 초등학교
    case middle // 중학교
    case high
    case university // 대학교
    case graduate // 대학원
}

enum School2 {
    case primary, elementary, middle, high, university, graduate
}

// enum(열거형 변수)의 생성 및 값 변경 2가지
var highestEducationLevel: School = School.university
var highestEducationLevel2: School = .university

highestEducationLevel = .graduate

// 항목의 원시 값 지정 및 사용방법
enum School3: String{
    case primary = "유치원"
    case elemantary = "초등학교"
    case middle = "중학교"
    case high = "고등학교"
    case colleage = "대학교"
    case graduate = "대학원"
}

enum WeekDays: Character{
    case mon = "월", tue = "화", wed = "수", thu = "목", fri = "금", sat = "토", sun = "일"
}

// 원시 값
enum Numbers: Int{
    case zero
    case one
    case ten = 10
}
print(Numbers.zero.rawValue, Numbers.one.rawValue, Numbers.ten.rawValue)

// 응용 방법
enum PastaTaste{
    case cream, tomato
}
enum PizzaDough{
    case cheseCrust, thin, original
}
enum PizzaTopping{
    case peperoni, chese, bacon
}
enum MainDish{
    case pasta(taste: PastaTaste)
    case pizza(dough: PizzaDough, topping: PizzaTopping)
    case chicken(withSauce: Bool)
    case rice
}

var dinner: MainDish = MainDish.pasta(taste: PastaTaste.tomato)
dinner = MainDish.pizza(dough:PizzaDough.cheseCrust, topping: PizzaTopping.bacon)
