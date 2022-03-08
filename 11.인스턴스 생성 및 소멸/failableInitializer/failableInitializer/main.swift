// 실패 가능한 이니셜라이저
// 이름이나 나이가 잘못입력되었을 때 초기화하지 않는 방법

class Person{
    let name: String
    var age: Int?
    
    init?(name: String){
        if name.isEmpty{
            return nil
        }
        self.name = name
    }
    
    init?(name: String, age: Int){
        if name.isEmpty || age < 0{
            return nil
        }
        self.name = name
        self.age = age
    }
}

let jiwon: Person? = Person(name: "jiwon", age: 100)
if let person: Person = jiwon{
    print(person.name)
} else{
    print("Person wasn't initialized")
} // jiwon


let chope: Person? = Person(name: "chope", age: -10)
if let person: Person = chope{
    print(person.name)
}else{
    print("Person wasn't initialized")
} // Person wasn't initialized

