let first:Int = 5
let second:Int = 5
var biggerValue:Int = 0

if first>second{
    biggerValue = first
} else if (first == second){ // 조건수식 소괄호 표현은 선택사항
    biggerValue = first
} else{
    biggerValue = second
}
