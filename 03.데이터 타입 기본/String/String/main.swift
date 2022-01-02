let name: String = "jiwon" // 변경 불가능
var introduce: String = String() // 빈 문자열 생성

introduce.append("안녕하세요") // 이어붙이기 방법 1

introduce = introduce + " 제 이름은 " + name + "입니다." // 이어붙이기 방법 2

print(introduce)

print("name 글자 수 : \(name.count)") // 글자수
print(introduce.isEmpty) // 빈 문자열인지 확인

let unicodeScalarValue: String = "\u{2665}"
print(unicodeScalarValue) // 유니코드의 스칼라 값

