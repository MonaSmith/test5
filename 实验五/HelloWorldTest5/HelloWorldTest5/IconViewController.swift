//
//  IconViewController.swift
//  HelloWorldTest5
//
//  Created by apple on 2018/11/21.
//  Copyright © 2018年 wanfengling. All rights reserved.
//

import UIKit

class IconViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor=UIColor.green
        let imageView = UIImageView(frame:CGRect(x:10,y:100,width:400,height:400))
        imageView.image=UIImage(named:"animal")
        view.addSubview(imageView)
        let button = UIButton(frame:CGRect(x:100,y:100,width:200,height:10))
        button.setTitle("close Me", for: .normal)
        button.setTitleColor(UIColor.red, for: .normal)
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(btnClicked), for: .touchUpInside)
        self.title = "Second"
        // Do any additional setup after loading the view.
    }
    @IBAction func btnClicked() {
        //        presentingViewController?.dismiss(animated: true, completion: nil)
        navigationController?.pushViewController(ViewController(), animated: true)
    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}

