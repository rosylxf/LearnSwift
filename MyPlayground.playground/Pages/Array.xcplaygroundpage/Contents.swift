//: [Previous](@previous)

import Foundation
import UIKit

//: [Next](@next)

func demo1() {
    
    let p = CGPoint(x: 10, y: 30)
    
    let array = [p]
    print(array)
    
    // 如果数组中的类型不一致，自动推导为[NSObject]类型
    // 在Swift中嗨哟一种类型[AnyObject]代表任意对象
    // 在Swift中一个类可以没有任何父类
    // 在混合数组中，CG结构体需要包装
    
    let mixArray = ["张三", 1, NSValue(cgPoint: p)] as [Any]
    print(mixArray)
}

// MARK: - 数组的遍历
func demo2() {
    
    let array = ["张三", "小兰"]
    print("1. 按下标遍历")
    for i in 0..<array.count {
        print(array[i])
    }
    
    print("2. for in 遍历元素")
    for i in array {
        print(i)
    }
    
    print("3. 同时遍历下标和内容1")
    for e in array.enumerated() {  // e是一个元组
        print("\(e.offset) \(e.element)")
    }
    
    print("4.同时遍历下标和内容2")
    for (index, elem) in array.enumerated() {
        print("\(index) \(elem)")
    }
    
    print("5. 反序遍历")
    for i in array.reversed() {
        print(i)
    }
    
    print("6. 反序遍历:索引和内容")
    for (n, s) in array.enumerated().reversed() { //先枚举后反序
        print("\(n) \(s)")
    }
    
}

/// MARK: - 数组的增删改

/// MARK: - 数组的合并 + ，数组的合并得需要数组中的元素必须一致才能合并
