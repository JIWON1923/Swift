func say(_ something: String) -> String{
    print(something)
    return something
}

@discardableResult func discardableResultSay(_ something: String) -> String {
    print(something)
    return something
}

say("hello") // 컴파일러의 경고를 받음
discardableResultSay("hello") // 반환값을 사용하지 않아도 경고가 나오지 않음
