// 구조체 정의
struct BasicInformation{
    var name: String
    var age: Int
}

// 구조체 인스턴스 생성
var jiwonInfo: BasicInformation = BasicInformation(name:"jiwon", age: 24)

// 변수이므로 값의 변경이 가능
jiwonInfo.name = "maison"
jiwonInfo.age = 25

// 상수라면 변경 불가
let maisonInfo: BasicInformation = BasicInformation(name: "maison", age: 25)
//maisonInfo.name = "jiwon" // Cannot assign to property: 'maisonInfo' is a 'let' constant
