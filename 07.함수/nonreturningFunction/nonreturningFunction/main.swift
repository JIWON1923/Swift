func crashAndBurn() -> Never{
    fatalError("Somthin very, very bad happened")
}

//crashAndBurn()

func someFunction(isAllIsWell: Bool){
    guard isAllIsWell else{
        print("마을에 도둑이 들었습니다")
        crashAndBurn()
    }
    print("All is well")
}

someFunction(isAllIsWell: true)
someFunction(isAllIsWell: false)
