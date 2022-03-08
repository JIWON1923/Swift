// 인스턴스 소멸
// deinitializer는 클래스에서만 사용

import Foundation

class FileManager{
    var fileName: String
    
    init(fileName: String){
        self.fileName = fileName
    }
    
    func openFile(){
        print("Open File: \(self.fileName)")
    }
    
    func modifyFile(){
        print("Modify File: \(self.fileName)")
    }
    
    func writeFile(){
        print("Write File: \(self.fileName)")
    }
    
    func closeFile(){
        print("Close File: \(self.fileName)")
    }
    
    deinit{
        print("Deinit instance")
        self.writeFile()
        self.closeFile()
    }
}

var fileManager: FileManager? = FileManager(fileName: "abc.txt")

if let manager: FileManager = fileManager{
    manager.openFile()
    manager.modifyFile()
}
 fileManager = nil
// call the Deinit
