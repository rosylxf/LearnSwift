//: [Previous](@previous)

import Foundation
import UIKit

/// MARK: 闭包
/// 闭包的定义

func loadData(completion: @escaping (_ result: [String]) -> ()) -> () {
    
    DispatchQueue.global().async {
        
        print("耗时操作 \(Thread.current)")
        
        //休眠
        Thread.sleep(forTimeInterval: 0.0)
        
        //获取结果
        let json = ["头条", "星际迷航3", "上映"]
        
        DispatchQueue.main.async {
            print("主线程更新UI \(Thread.current)")
            print("========")
            completion(json)
        }
        
    }
    
}

loadData { (result) in  // 在iOS项目中才有正确结果
    print("新闻内容是：\(result)")
}

//: MARK: - 尾随闭包
//: 如果函数的最后一个参数是闭包，函数参数可以提前结束，最后一个参数直接使用{}包装闭包的代码
loadData { (result) in
    
    print(result)
    
}
//: 转换成完整的写法是
loadData(completion: { (result) -> () in
    
    print(result)
    
})

//:  {}的一个坑

//{
//    print("大括号括号有问题")
//}

// 相当于无参无返回值的闭包：
//{   () -> () in
//    print("大括号括号有问题")
//}










//: [Next](@next)
