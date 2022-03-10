// 클로저의 가독성이 떨어질 때 사용하는 후행클로저!

let names: [String] = ["jiwon",  "zest", "maison"]
let reversed: [String] = names.sorted(){ (first: String, second: String) -> Bool in return first > second
}

// sorted(by:)의 소괄호 생략도 가능
let reversed2: [String] = names.sorted{ (first:String, second: String) -> Bool in return first > second
}


func doSomething(do: (String) -> Void, onSuccess: (Any) -> Void, onFailure: (Error) -> Void){
    // do something...
}

// 다중 후행 클로저 사용
doSomething{(someString: String) in
    // do clusure
} onSuccess: { (result: Any) in
    // success closure
} onFailure:{ (error: Error) in
    // failure closure
}
