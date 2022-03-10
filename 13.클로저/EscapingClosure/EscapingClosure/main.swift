// 탈출 클로저 - 비동기 작업으로 함수가 종료된 후 호출할 필요가 있는 클로저를 사용할 때

var completionHandlers: [() -> Void] = []

func someFunctionWithEscapingClosure(completionHandler: @escaping() -> Void){
    completionHandlers.append(completionHandler)
}


// 예제 코드
typealias VoidVoidClosure = () -> Void
let firstClosure: VoidVoidClosure = {
    print("Closure A")
}
let secondClosure: VoidVoidClosure = {
    print("Closure B")
}

// first, second 매개변수 클로저는 함수의 반환 값으로 사용될 수 있으므로 탈출 클로저이다.
func returnOneClosure(first: @escaping VoidVoidClosure, second: @escaping VoidVoidClosure, shouldReturnFirstClosure: Bool) -> VoidVoidClosure{
    // 전달인자로 받은 클로저를 함수 외부로 반환하기 때문에 함수를 탈출하는 클로저
    return shouldReturnFirstClosure ? first : second
}

let returnedClosure: VoidVoidClosure = returnOneClosure(first: firstClosure, second: secondClosure, shouldReturnFirstClosure: true)

returnedClosure() // Closure A

var closures: [VoidVoidClosure] = []

// closure 매개변수 클로저는 함수 외부 변수에 저장될 수 있으므로 탈출 클로저
func appendClosure(closure: @escaping VoidVoidClosure){
    // 전달인자로 받은 클로저가 함수 외부 변수 내부에 저장됨 -> 함수 탈출
    closures.append(closure)
}
