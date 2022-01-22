var myName: String? = "jiwon"

// 옵셔널 바인딩을 이용한 임시 상수 할당
if let name = myName{
    print("My name is \(name)")
} else{
    print("My name == nil")
}

// 옵셔널 바인딩을 이용한 임시 변수 할당
if var name = myName{
    name = "maison"
    print("My name is \(name)")
}else{ // name 변수 사용 불가 (다른 블럭)
    print("my name == nil")
}
