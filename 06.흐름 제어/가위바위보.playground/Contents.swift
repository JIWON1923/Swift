import UIKit

let computer = Int.random(in: 0..<3) // 0: 가위, 1: 바위, 2: 보
let user = Int.random(in: 0..<3)
let result = user - computer

if result == 0 {
    print("비겼음")
} else if result > 0 && result != 2 || result == -2 {
    print("이겼음")
} else {
    print("졌음")
}

// Switch문으로 구현
switch result {
case 0:
    print("비겼음")
case 2:
    print("졌음")
case -2:
    print("이겼음")
case let v where v > 0:
    print("이겼음")
default:
    print("졌음")
}
