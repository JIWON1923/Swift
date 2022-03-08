class AClass{
    
    // 저장 타입 프로퍼티
    static var typeProperty: Int = 0
    
    // 저장 인스턴스 프로퍼티
    var instanceProperty: Int = 0{
        didSet{
            Self.typeProperty = instanceProperty + 100
        }
    }
    
    // 연산 타입 프로퍼티
    static var typeComputedProperty: Int{
        get{
            return typeProperty
        }
        set{
            typeProperty = newValue
        }
    }
}

AClass.typeProperty = 123 // 타입 프로퍼티 - 인스턴스 생성 없이 사용 가능

let classInstance: AClass = AClass()
classInstance.instanceProperty = 100

print(AClass.typeProperty) // 200
print(AClass.typeComputedProperty) // 200
