//Array 선언 방법 2가지
var names: Array<String> = ["jiwon", "zest", "maison"]
var names2: [String] = ["jiwon", "zest", "maison"]

// 빈 Array 선언 방법 3가지
var emptyArray: [Any] = [Any]() // Any 타입을 요소로 갖는 빈 배열 생성
var emptyArray2: [Any] = Array<Any>()
var emptyArray3: [Any] = []

print(emptyArray.isEmpty) // true
print(names.count) // 배열의 길이 (요소 개수)

// 배열 사용
names[1] = "potter" // zest -> potter
names.append("john") // 맨 마지막에 추가됨
names.insert("elsa", at: 2) // 인덱스 2에 elsa 삽입
names.append(contentsOf: ["max", "kong"]) // 맨 마지막에 추가됨

// 특정 원소의 인덱스 찾기
print(names.firstIndex(of: "potter")) // potter의 인덱스 (3)
print(names.firstIndex(of: "harry")) // nill

// 첫 원소와 마지막 원소 가져오기
print(names.first)
print(names.last)

// 요소 삭제하기
let firstItem: String = names.removeFirst()
let lastItem: String = names.removeLast()
let indexZeroItem: String = names.remove(at: 0)
print(firstItem)
print(lastItem)
print(indexZeroItem)

print(names[1...3]) // 1부터 3까지 출력
