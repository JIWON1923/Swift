func sayHelloWorld(){
    print("Hello World!")
}

func sayHello(from myName:String, to yourName:String){
    print("Hi \(yourName), I'm \(myName)")
}

func goodLuck() -> Void{
    print("good luck~")
}

sayHelloWorld()
sayHello(from: "jiwon", to: "maison")
goodLuck()
