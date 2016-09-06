//: [Previous](@previous)

import Foundation
import UIKit

/**:
 1. 先给自己的属性分配空间并设置初始值
 2. 调用父类的构造函数，给父类的属性分配空间设置初始值
 */

class Person: NSObject {
    
    var name: String
    
    //：重写，父类有这个方法
    override init() {
        
        print("person init")
        
        // 问题： name确实有初始值，但是所有的初始值是 lee
        name = "lee"
        
        super.init()
    }
    
    //：重载，函数名相同，但是参数或个数不同
    init(name: String) {
        
        self.name = name
        
        super.init()
        
    }
}






//: [Next](@next)
