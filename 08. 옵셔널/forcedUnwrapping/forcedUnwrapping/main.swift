var myName: String? = "jiwon"

// 옵셔널이 아닌 변수에는 옵셔널 값이 들어갈 수 없다. => 추출해서 할당
var jiwon: String = myName!

myName = nil
//jiwon = myName! // 런타임 에러

if myName != nil{
    print("my name is \(myName!)")
} else{
    print("my name == nil")
}
