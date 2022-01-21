func helloWorld() -> String{
    return "Hello world!"
}

func sayHello(name: String, yourName: String) -> String{
    return "Hello \(yourName) I'm \(name)"
}

print(helloWorld())
print(sayHello(name: "zest", yourName: "jiwon"))
