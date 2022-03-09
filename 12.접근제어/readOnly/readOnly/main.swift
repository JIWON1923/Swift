// 읽기모드 -> 설정자만 더 낮은 접근수준을 갖도록 제한

import CoreGraphics

public struct SomeType{
    // 비공개 접근수준 저장 프로퍼치
    private var count: Int = 0
    
    // 공개 접근수준 저장 프로퍼티
    public var publicStoredProperty: Int = 0
    
    // 공개 접근 수준 저장 프로퍼티, 설정자는 비공개 접근수준
    public private(set) var publicGetOnlyStoredProperty: Int = 0
    
    // 내부 접근수준 저장 프로퍼티
    internal var internalComputedProperty: Int{
        get{
            return count
        }
        set{
            count += 1
        }
    }
    
    // 내부 접근수준 저장 프로퍼티, 설정자는 비공개
    internal private(set) var internalGetOnlyComputedProperty: Int{
        get{
            return count
        }
        set{
            count += 1
        }
    }
    
    // 공개 접근수준 서브스크립트
    public subscript() -> Int{
        get{
            return count
        }
        set{
            count += 1
        }
    }
    
    // 공개 접근수준 서브스크립트, 설정자는 내부 접근수준
    public internal(set) subscript(some: Int) -> Int{
        get{
            return count
        }
        set{
            count += 1
        }
    }
}


var someInstance: SomeType = SomeType()

// 외부에서 접근자, 설정자 모두 사용가능
print(someInstance.publicStoredProperty) // 0
someInstance.publicStoredProperty = 100

// 외부에서 접근자만 가능
print(someInstance.publicGetOnlyStoredProperty) // 0
// someInstance.publicGetOnlyStoredProperty = 100 // 오류

// 외부에서 접근자, 설정자 모두 가능
print(someInstance.internalComputedProperty) // 0
someInstance.internalComputedProperty = 100

// 외부에서 접근자만 가능
print(someInstance.internalGetOnlyComputedProperty) // 1
//someInstance.internalGetOnlyComputedProperty = 100 // 오류

// 외부에서 접근자, 설정자 모두 사용 가능
print(someInstance[]) // 1
someInstance[] = 100
