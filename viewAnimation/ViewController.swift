//
//  ViewController.swift
//  viewAnimation
//
//  Created by 長沢　遼 on 2016/09/07.
//  Copyright © 2016年 Sgtmt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewDidAppear(animated: Bool) {
        let nv = NextViewController()
        print("画面推移するよ")
        presentViewController(nv,animated:true,completion:nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

