// 타입 별칭 사용
typealias StringIntDictionary = [String: Int]

// 빈 딕셔너리 생성 3가지 방법
var NumberForName: Dictionary<String, Int> = Dictionary<String, Int>()
var NumberForName2: [String: Int] = [String: Int]()
var NumberForName3: [String: Int] = [:]

// 선언과 동시에 초기화 방법
var NumberForName4: [String: Int] = ["jiwon":100, "maison":99, "zest":99]
var NumberForName5: StringIntDictionary = ["jiwon":100, "maison":99, "zest":99]
print(NumberForName.isEmpty)
print(NumberForName4.isEmpty)
print(NumberForName4.count)

// 사용
print(NumberForName["jiwon"]) // 100
print(NumberForName["leejiwon"]) // nil

NumberForName["zest"] = 100

print(NumberForName.removeValue(forKey: "zest")) // zest 삭제, 없다면 nil
print(NumberForName["zest", default:0]) // 값이 없으면 0을 반환(기본값)

