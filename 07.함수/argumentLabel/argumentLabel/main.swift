func sayHello(from name: String, to yourname: String) -> String{
    "Hello \(yourname) I'm \(name)"
}

print(sayHello(from: "jiwon", to: "zest"))


// 중복정의

func sayHi(to name: String, _ times: Int) -> String{
    var result: String = ""
    
    for _ in 0..<times{
        result += "Hello \(name)! "
    }
    
    return result
}

func sayHi(to name: String, repeatCount times: Int) -> String{
    var result: String = ""
    for _ in 0..<times{
        result += "Hello \(name) "
    }
    return result
}

print(sayHi(to: "jiwon", 2))
print(sayHi(to: "jiwon", repeatCount:2))
