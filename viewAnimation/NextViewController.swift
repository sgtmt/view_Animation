//
//  NextViewController.swift
//  viewAnimation
//
//  Created by 長沢　遼 on 2016/09/07.
//  Copyright © 2016年 Sgtmt. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
    var atai :Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        print("ようこそ")
        
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(animated: Bool) {
        
        // 戻る場合には、dismissViewControllerAnimatedメソッドを使います。
        // ここで、animatedをtrueにするとアニメーションしながら遷移できる
        print("またね")
        let str = "atai;"
        atai = atai+1
        print(str + " \(atai)")
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
