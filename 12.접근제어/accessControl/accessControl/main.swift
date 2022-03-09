// 접근제어 지정 예시
open class OpenClass{
    open var openProperty: Int = 0
    public var publicProperty: Int = 0
    internal var internalProperty: Int = 0 // 기본 접근수준, 표기 생략 가능
    fileprivate var filePrivateProperty: Int = 0
    private var privateProperty: Int = 0
    
    open func openMethod(){}
    public func publicMethod(){}
    internal func internalMethod(){}
    fileprivate func filePrivateMethod(){}
    private func privateMethod(){}
    
}


//private과 fileprivate

public struct SomeType{
    private var privateVariable: Int = 0
    fileprivate var filePrivateVariable: Int = 0
}

extension SomeType{
    public func publicMethod(){
        print("\(self.privateVariable), \(self.filePrivateVariable)")
    }
    
    private func privateMethod(){
        print("\(self.privateVariable), \(self.filePrivateVariable)")
    }
    
    fileprivate func filePrivateMethod(){
        print("\(self.privateVariable), \(self.filePrivateVariable)")
    }
}

struct AnotherType{
    var someInstance: SomeType = SomeType()
    
    mutating func someMethod(){
        self.someInstance.publicMethod() // 어디서든 접근 가능
        
        // 같은 파일에 속해있으므로 접근 가능
        self.someInstance.filePrivateVariable = 100
        self.someInstance.filePrivateMethod() // 0, 100
        
        // 다른 타입 내부의 코드이므로 접근 불가, 오류 발생
        //self.someInstance.privateVariable = 100
        //self.someInstance.privateMethod()
    }
}

var anotherInstance = AnotherType()
anotherInstance.someMethod()
