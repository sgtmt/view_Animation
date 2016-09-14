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
        
      make_Btn()
        // ボタンを追加する.
        
        let nextButton: UIButton = UIButton(frame: CGRect(x: 0,y: 0, width: 120, height: 50))
        nextButton.backgroundColor = UIColor.red
        nextButton.layer.masksToBounds = true
        nextButton.setTitle("Next", for: .normal)
        nextButton.layer.cornerRadius = 20.0
        nextButton.layer.position = CGPoint(x: self.view.bounds.width/2 , y:self.view.bounds.height-50)
        nextButton.addTarget(self, action: #selector(onClickMyButton(sender:)), for: .touchUpInside)

        self.view.addSubview(nextButton);
        
        // Do any additional setup after loading the view.
    }
    internal func onClickMyButton(sender: UIButton){
        
        // 遷移するViewを定義する.
        let mySecondViewController: UIViewController = NextViewController()
        
        // アニメーションを設定する.
        mySecondViewController.modalTransitionStyle = .partialCurl
        
        // Viewの移動する.
        self.present(mySecondViewController, animated: true, completion: nil)
    }

    override func viewDidAppear(_ animated: Bool) {
        
        // 戻る場合には、dismissViewControllerAnimatedメソッドを使います。
        // ここで、animatedをtrueにするとアニメーションしながら遷移できる
        print("またね")
        let str = "atai;"
        atai = atai+1
        print(str + " \(atai)")
        self.dismiss(animated: true, completion: nil)
    }

    func make_Btn(){
        
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
