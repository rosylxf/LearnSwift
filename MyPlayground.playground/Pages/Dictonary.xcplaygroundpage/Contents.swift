//: [Previous](@previous)

import UIKit

//1. 字典的定义
func demo1() {
    
    let dict: [String: Any] = ["name": "lee", "age": 18]
    print(dict)
    
    //定义字典的数组
    let array: [[String: AnyObject]] = [
        ["name": "zhang" as AnyObject, "age": 18 as AnyObject],
        ["name": "lxf" as AnyObject, "age": 19 as AnyObject]
    ]
    
    print(array)
    
}

//2. 字典的增删改
func demo2() {
    
    var dict: [String: Any] = ["name": "lee", "age": 18]
    
    dict["title"] = "geek"
    print(dict)
    
    //删除
    dict .removeValue(forKey: "age")
    print(dict)
    
    dict["age"] = "20"
    
}

//3. 字典的遍历
func demo3() {
    
    let dict: [String: Any] = ["name": "lee", "age": 18]
    
    
    for e in dict {
        print(e)
    }
    
    for (key, value) in dict {
        print("\(key)  \(value)")
    }
}

//4. 字典的合并
func demo4() {
    
    var dict1: [String: Any] = ["name": "lee", "age": 18]
    let dict2: [String: Any] = ["title": "lee", "height": 176]
    
    //遍历dict2，依次设置
    for (key, value) in dict2{
        dict1[key] = value
    }
    
    print(dict1)
}

