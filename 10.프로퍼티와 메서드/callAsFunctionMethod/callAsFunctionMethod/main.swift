struct Puppy{
    var name: String = "멍멍쓰"
    
    func callAsFunction(){
        print("멍멍")
    }
    
    func callAsFunction(destination: String){
        print("\(destination)으로 달려갑니다.")
    }
    
    func callAsFunction(something: String, times:Int){
        print("\(something)을 \(times)번 반복합니다.")
    }
    
    func callAsFunction(color: String) ->String{
        return "\(color) 응가"
    }
    
    mutating func callAsFunction(name: String){
        self.name = name
    }
}

var doggy: Puppy = Puppy()
doggy.callAsFunction() // 멍멍
doggy() // 멍멍
doggy.callAsFunction(destination: "집")
doggy(destination: "뒷동산")
doggy.callAsFunction(something: "앉아", times: 3)
print(doggy(color: "무지개색"))
print(doggy.name)

