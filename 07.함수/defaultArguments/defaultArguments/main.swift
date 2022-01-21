func sayHello(to name: String, repeatCount times: Int = 3) -> String{
    var result: String = ""
    
    for _ in 0..<times{
        result += "Hello \(name) "
    }
    return result
}

print(sayHello(to: "jiwon"))
print(sayHello(to: "jiwon", repeatCount: 1))
