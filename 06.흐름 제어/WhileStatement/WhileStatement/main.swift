// while

var names: [String] = ["jiwon", "maison", "potter"]

while names.isEmpty == false{
    print("Hi \(names.removeFirst())")
}


/* repeat-while
 repeat 내부 코드를 최초 1회 실행
 다음 while 조건이 만족하면
 블록 내부의 코드 반복 */
names = ["jiwon", "maison", "potter"]

repeat{
    print("Hi \(names.removeFirst())")
}while names.isEmpty == false


