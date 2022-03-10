let names: [String] = ["wizplan", "eric", "jiwon", "meison"]

// 기본 함수 형태
func backwards(first: String, second: String) -> Bool{
    return first > second
}
let reversed: [String] = names.sorted(by: backwards)
print(reversed)


// 클로저 표현으로 대체
let reversed2: [String] = names.sorted(by: { (first: String, second: String) -> Bool in return first > second
})
print(reversed2)
