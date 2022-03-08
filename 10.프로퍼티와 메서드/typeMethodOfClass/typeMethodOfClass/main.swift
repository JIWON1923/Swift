class AClass{
    static func staticTypeMethod(){
        print("AClass staticTypeMethod")
    }
    
    class func classTypeMethod(){
        print("Aclass classTypeMethod")
    }
    
}

class BClass: AClass{
    /*
     // 오류 - 재정의 불가
     override static func staticTypeMethod(){
         
     }
     */
    
    override class func classTypeMethod() {
        print("BClass classTypeMethod")
    }
    
}

AClass.staticTypeMethod()
AClass.classTypeMethod()
BClass.classTypeMethod()
