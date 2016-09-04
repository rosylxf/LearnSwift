//: [Previous](@previous)

import UIKit


func demoString() {
    
    let str = "hello我要飞得更高"
    
    for c in str.characters {
        print(c)
    }
    
    //1. 返回指定编码对应的字节数量
    print(str.lengthOfBytes(using: .utf8))
    
    //2. 打印字符串长度--字符的个数
    print(str.characters.count)
    
    //3. 使用NSString中转返回字符个数
    let ocString = str as NSString   //as用作类型转换
    print(ocString.length)
    
}

// MARK: - 拼接

func demo2String() {
    
    let name = "我是"
    let age = 18
    
    let point = CGPoint(x: 100, y: 200)
    
    let str = "\(name) \(age) \(point)"
    print(str)
    
    
}

// MARK: - 格式化
func demo3String() {
    let h = 8
    let m = 9
    let s = 6
    
    let dateStr = String(format: "%02d:%02d:%02d", h, m, s)
    
    print(dateStr)
}

// MARK: - 字符串的子串
func demo4String() {
    
    let str = "我们一起去飞"
    
    //1. NSString
    let ocString = str as NSString
    let s1 = ocString.substring(with: NSMakeRange(2, 3))
    print(s1)
    
    //2. String 的3.0方法
    //   str.substring(with: <#T##Range<Index>#>)
    
    print(str.startIndex)
    print(str.endIndex)
    
    let s2 = str.substring(from: "我们".endIndex)
    print("s2=="+s2)
    
    let s3 = str.substring(from: "abc".endIndex)
    print("s3=="+s3)
    
    //取子字符串的范围
    guard let range = str.range(of: "一起") else {
        print("没有找到字符串")
        return
    }
    //一定找到了范围
    print("--------------")
    print(range)
    print(str.substring(with: range))
    
}


