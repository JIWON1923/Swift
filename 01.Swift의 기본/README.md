# Swift의 기본

## 명명 규칙
**Camel case**
> Lower Camel Case : function, method, instance   
> Upper Camel Case : class, struct, protocol, enum 등 Type이 되는 것   

**Guide line**
> Unicode에서 지원하는 모든 문자 사용 가능 (한글, 한자, 이모티콘 모두)   
> 예약어/키워드, 중복된 변수명, 연산자 기호(*, +, -, /), 숫자로 시작, 공백이 포함된 경우는 사용 불가    
> 대/소문자 구별   
> 세미콜론은 선택(포함하지 않는 것이 정석)   

---

## 콘솔 로그
**print()**
> print("출력내용")   
> 줄바꿈 문자 자동 삽입된다.   
> 디버깅 콘솔에 간략한 정보 출력

**dump**
> print()보다 자세한 정보 출력 (인스턴스의 내부 콘텐츠)

---

## 문자열 보간법
> 문자열 내에 변수 또는 상수의 특정 값을 나타낼 때 사용   
> 형식 : **\(변수 또는 상수명)**
>
>
> ```swift 
> let name : String = "jiwon"
> print("My name is \(name)")
> ```
>
>
