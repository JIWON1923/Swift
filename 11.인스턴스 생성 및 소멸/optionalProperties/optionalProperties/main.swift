class Person{
    var name: String
    var age: Int?
    
    init(name: String){
        self.name = name
    }
}

let jiwon: Person = Person(name: "jiwon")
print(jiwon.name) // jiwon
print(jiwon.age) // nil

jiwon.age = 25
jiwon.name = "meison"
print(jiwon.name) // meison
print(jiwon.age) //Optional(25)
