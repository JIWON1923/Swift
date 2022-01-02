var integer: Int = -100
let unsignedInteger: UInt = 50
print("integer 값 = \(integer), unsignedInteger 값 = \(unsignedInteger)")
print("Int 최댓값 = \(Int.max), Int 최솟값 = \(Int.min)")
print("UInt 최댓값 = \(UInt.max), UInt 최솟값 = \(UInt.min)")

integer = Int(unsignedInteger) // Int와 UInt는 다른 타입이므로 타입 변경이 필요하다.
