//: [Previous](@previous)

import Foundation
import UIKit

// 函数定义

func printInfo(name: String, age: Int) -> String {
    
    return("\(name) \(age)")
    
}

printInfo(name: "ricky", age: 18)

// 外部参数 ：就是在形参前面加一个名字，便于理解，更加直观，单不会影响函数内部细节
// 外部参数如果用_ ,调用时则会忽略形参名字

func sum1 (num1 x: Int, num2 y:Int) -> Int {
    return x + y
}

sum1(num1: 10, num2: 20)


func sum2 (_ x: Int, _ y:Int) -> Int {
    return x + y
}

sum2(10, 10)

/// 默认值 ：通过给参数设置默认值，在调用时，可以任意组合参数

func sum3 (x: Int = 1, y:Int = 2) -> Int {
    return x + y
}

print(sum3())
print(sum3(x: 10, y: 20))
print(sum3(x: 10))
print(sum3(y: 10))

// 无返回值
/**
 * - 直接省略
 * - ()
 * - Void
 */

func testNoValue() {
    print("直接省略")
}

func testNoValue2() ->() {
    print(" ->() ")
}

func testNoValue3() -> Void {
    print(" ->Void ")
}

testNoValue()
testNoValue2()
testNoValue3()



















//: [Next](@next)
