// 빈 세트 생성 방법
var names: Set<String> = Set<String>()
var names2: Set<String> = []

// 선언과 동시에 초기화
var names3: Set<String> = ["Jiwon", "zest", "Jiwon", "maison"]

// 대괄호로 사용하기 때문에 타입 추론을 사용하면 Array가 생성됨
var numbers = [100, 200, 300, 100]
print(type(of: numbers)) // Array<Int>


// 세트의 사용
names.insert("jiwon")
print(names.remove("zest")) // 없는 요소 제거 -> nil
// remove하면 해당 원소를 삭제하고, 반환한다!!


// 포함관계 연산
let 새: Set<String> = ["비둘기", "닭", "기러기"]
let 포유류: Set<String> = ["돌고래", "호랑이", "곰"]
let 동물: Set<String> = 새.union(포유류) // 합집합

print(새.isDisjoint(with: 포유류)) // 배타적인가 (교집합이 없는가)
print(새.isSubset(of: 동물)) // 새가 동물의 부분집합인가
print(동물.isSuperset(of: 포유류)) // 동물이 표유류의 전제칩합인가
print(동물.isSuperset(of: 새)) // 새의 전체 집합인가
print(새.shuffled()) // list, dictionary 등에서도 사용 가능
