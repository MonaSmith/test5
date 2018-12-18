//
//  ViewController.swift
//  HelloWorldTest5
//
//  Created by apple on 2018/11/21.
//  Copyright © 2018年 wanfengling. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor.red
        
        let label = UILabel(frame: CGRect(x: 150, y: 150, width: 100, height: 100))
        label.text = "Hello World!"
        label.backgroundColor = UIColor.blue
        label.textAlignment = .center
        label.center = view.center
        view.addSubview(label)
        
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 200, height: 20))
        button.setTitle("Click Me", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(btnClicked), for: .touchUpInside)
        
        self.title = "First"
    }
    
    @IBAction func btnClicked() {
        if let label = view.subviews.first as? UILabel {
            label.text = "I am Clicked!"
        }
        self.navigationController?.pushViewController(IconViewController(), animated: true)
    }


}

