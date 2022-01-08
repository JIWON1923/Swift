//Dictionary
let friends: [String: Int] = ["Jay": 35, "Joe": 29, "Jenny": 23]

for tuple in friends{
    print(tuple)
}

let fruites:[String: String] = ["Apple":"Red", "Banana":"Yellow", "Pear":"Beige"]

for (key, value) in fruites{
    print("\(key), \(value)")
}
