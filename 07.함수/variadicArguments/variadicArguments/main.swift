func sayHello(me: String, friends names: String...) -> String{
    var result: String = ""
    
    for friend in names{
        result += "Hello \(friend)! "
    }
    result += "I'm \(me)"
    return result
}

print(sayHello(me: "jiwon", friends: "ji", "won", "maison"))

print(sayHello(me: "jiwon"))
