//
//  ViewController.swift
//  swift-UITapGesture
//
//  Created by huanghy on 16/4/20.
//  Copyright © 2016年 huanghy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let rect = CGRectMake(32, 80, 256, 256)
        let imageView = UIImageView(frame: rect)
        
        let image = UIImage(named: "1")
        imageView.image = image
        //开启图像视图的交互功能
        imageView.userInteractionEnabled = true
        //将图像视图添加到当前视图控制器的根视图
        self.view.addSubview(imageView)
        
        //创建一个手势检测类，这是一个抽象类，它定义了所有手势的基本行为，并拥有6个子类，来检测发生在设备中的各种手势
        let gesture = UITapGestureRecognizer(target: self, action: "singleTap")
        //将创建的手势，指定给图像视图
        imageView.addGestureRecognizer(gesture)
        
    }

    //创建用于接收手势事件的方法
    func singleTap(){
        //当接收到手势事件后，弹出一个提示窗口
        let alertView = UIAlertController(title: "Infomation", message: "single tap", preferredStyle: UIAlertControllerStyle.Alert)
        //创建一个按钮，作为提示窗口中的【确定按钮】。当用户点击该按钮时，将关闭提示窗口。
        let OKAction = UIAlertAction(title: "OK", style: .Default) { (ACTION) -> Void in
            
        }
        //将确定按钮添加到提示窗口中
        alertView.addAction(OKAction)
        //在当前视图控制器中，展示提示窗口
        self.presentViewController(alertView, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

