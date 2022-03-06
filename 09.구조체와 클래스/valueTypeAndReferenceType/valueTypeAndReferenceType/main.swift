// 구조체, 값 타입(전달될 값이 복사되어 전달)
struct BasicInformation{
    let name: String
    var age: Int
}

var jiwonInfo: BasicInformation = BasicInformation(name: "jiwon", age: 25)
var friendInfo: BasicInformation = jiwonInfo
friendInfo.age = 24
print("jiwon's age: \(jiwonInfo.age)") // 25
print("friend's age: \(friendInfo.age)") // 24


// 클래스, 참조 타입(주소가 전달)
class Person{
    var height: Float = 0.0
    var weight: Float = 0.0
}

var jiwon: Person = Person()
var friend: Person = jiwon

print("jiwon's height: \(jiwon.height)")   // 0.0
print("friend's height: \(friend.height)") // 0.0

jiwon.height = 170
// jiwon 값만 변경했지만, 둘 다 값이 변경되었다. 즉, friend와 jiwon이 참조하는 곳이 같음을 알 수 있다.
print("jiwon's height: \(jiwon.height)")   // 170
print("friend's height: \(friend.height)") // 170



// 전달인자로서의 구조체와 클래스의 인스턴스
func changeBasicInfo(_ info: BasicInformation){
    var copiedInfo: BasicInformation = info
    copiedInfo.age = 1
}

func changedPersonInfo(_ info: Person){
    info.height = 155.3
}

changeBasicInfo(jiwonInfo)
print("jiwon's age: \(jiwonInfo.age)") // 25 (변하지 않음, 복사값이 전달되었으므로)

changedPersonInfo(jiwon)
print("jiwon's height: \(jiwon.height)") // 155.3 (변함, 참조가 전달되었으므로)



// 식별 연산자
var maison: Person = Person()
let potter = maison // maison의 참조 할당
let another: Person = Person() // 새로운 인스턴스 생성

print(maison === potter) // true
print(maison === another) // false
print(potter !== another) // true
