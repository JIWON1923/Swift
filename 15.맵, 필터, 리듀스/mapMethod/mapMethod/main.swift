let numbers: [Int] = [0, 1, 2, 3, 4]

var doubleNumbers: [Int] = [Int]()
var strings: [String] = [String]()

// for
for number in numbers{
    doubleNumbers.append(number*2)
    strings.append("\(number)")
}

print(doubleNumbers)
print(strings)

// map method
doubleNumbers = numbers.map({ (number: Int) -> Int in
    return number * 2
})
strings = numbers.map({ (number: Int) -> String in
    return "\(number)"
})
print(doubleNumbers)
print(strings)

/*
 map을 사용하면, 빈 배열을 선언 할 필요도 없고, append연산을 실행하는 시잔도 필요 없다.
 */
