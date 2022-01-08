var valueA: Int = 3
var valueB: Int = 5
var biggerValue: Int = valueA > valueB ? valueA : valueB
print(biggerValue) // 5

valueA = 0
valueB = -3
biggerValue = valueA > valueB ? valueA : valueB
print(biggerValue) // 0

var stringA: String = ""
var stringB: String = "String"
var resultValue: Double = stringA.isEmpty ? 1.0 : 0.0 // 1.0
print(resultValue)
resultValue = stringB.isEmpty ? 1.0 : 0.0 // 0.0
print(resultValue)
