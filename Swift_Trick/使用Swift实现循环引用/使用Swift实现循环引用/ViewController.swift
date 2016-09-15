//
//  ViewController.swift
//  使用Swift实现循环引用
//
//  Created by ricky on 9/13/16.
//  Copyright © 2016 ricky. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var completionCallBack: (()->())?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        loadData {
            print(self.view)
        }
    }

    func loadData(completion: @escaping ()->()) -> () {
        
        //使用属性记录闭包： self对闭包引用了
        completionCallBack = completion
        
        //异步
        DispatchQueue.global().async {
            print("耗时操作")
            
            DispatchQueue.main.async {
                //回调，执行闭包
                completion()
            }
        }
        
    }
    
    //类似于Oc的dealloc
    deinit {
        print("deinit被调用")
    }


}

