func hello(name: String) -> String{
    return "Hello \(name)"
}



// 함수 내부 코드의 코드가 한 줄이고, 결괏값의 타입과 반환 타입과 일치한다면
// return 키워드를 생략할 수 있다.
func hello2(name:String) -> String{
    "Hello \(name)"
}


let name: String = hello(name:"jiwon")
let name2: String = hello2(name:"jiwon")
