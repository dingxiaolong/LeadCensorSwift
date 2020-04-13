//
//  LeakEye.swift
//  LeadCensorSwift
//
//  Created by tonbright on 2020/4/8.
//  Copyright © 2020 tonbright. All rights reserved.
//

import Foundation

protocol LeakEyeDelegate {
    func leakEye(_ leakEye: LeakEye,didCatchLeak object: NSObject)
}

class LeakEye: NSObject {
    var timer: Timer?
    var delegate:LeakEyeDelegate?
    
    var isOpening: Bool {
        return self.timer?.isValid ?? false
    }
    
    override init() {
        super.init()
//        NotificationCenter.default.addObserver(self, selector: #selector(LeakEye.receive), name: NSNotification.Name("receive"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(receive), name: NSNotification.Name("receive"), object: nil)
        
        
    }
    
    
    
    // MARK: - 开启定时器====进行监听了=====
    func open() {
        //方法交换====
        
        //开启定时器=====
    }
    
    
    
    
    @objc func receive(noti: NSNotification) {
        //接收到代理发送出来的通知   做出相应=======
    }
    
    
}
