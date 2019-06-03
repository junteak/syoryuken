//
//  ViewController.swift
//  TestCatAnima
//
//  Created by 潤田中 on 2019/06/03.
//  Copyright © 2019 BCC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 画面背景を設定してみました
        //        self.view.backgroundColor = UIColor(red:0.44,green:0.41,blue:0.36,alpha:1.0)
        
    }
    // ボタンをタップしてanimation開始
    @IBAction func start(sender: AnyObject) {
        // アニメーション用の画像
        let image1:UIImage = UIImage(named:"attak1.png")!
        let image2:UIImage = UIImage(named:"attak2.png")!
        let image3:UIImage = UIImage(named:"attak3.png")!
        let image4:UIImage = UIImage(named:"attak4.png")!
        let image5:UIImage = UIImage(named:"attak5.png")!
        let image6:UIImage = UIImage(named:"attak6.png")!
        let image7:UIImage = UIImage(named:"attak7.png")!
        let image8:UIImage = UIImage(named:"attak8.png")!
        let image9:UIImage = UIImage(named:"attak9.png")!
        let image10:UIImage = UIImage(named:"attak10.png")!
        let image11:UIImage = UIImage(named:"attak11.png")!
        let image12:UIImage = UIImage(named:"attak12.png")!
        let image13:UIImage = UIImage(named:"attak13.png")!
        let image14:UIImage = UIImage(named:"attak14.png")!
        let image15:UIImage = UIImage(named:"attak15.png")!
        let image16:UIImage = UIImage(named:"attak16.png")!
        let image17:UIImage = UIImage(named:"attak17.png")!
        let image18:UIImage = UIImage(named:"attak18.png")!
        let image19:UIImage = UIImage(named:"attak19.png")!
        let image20:UIImage = UIImage(named:"attak20.png")!
        
        
        // UIImage の配列を作る
        var imageListArray :Array<UIImage> = []
        // UIImage 各要素を追加、ちょっと冗長的ですが...
        imageListArray.append(image1)
        imageListArray.append(image2)
        imageListArray.append(image3)
        imageListArray.append(image4)
        imageListArray.append(image5)
        imageListArray.append(image6)
        imageListArray.append(image7)
        imageListArray.append(image8)
        imageListArray.append(image9)
        imageListArray.append(image10)
        imageListArray.append(image11)
        imageListArray.append(image12)
        imageListArray.append(image13)
        imageListArray.append(image14)
        imageListArray.append(image15)
        imageListArray.append(image16)
        imageListArray.append(image17)
        imageListArray.append(image18)
        imageListArray.append(image19)
        imageListArray.append(image20)
        
        // 画面スクリーンサイズ
        let screenWidth = self.view.bounds.width
        let screenHeight = self.view.bounds.height
        
        // 画像のサイズ
        let imageWidth = image1.size.width
        let imageHeight = image1.size.height
        
        // UIImageView のインスタンス生成,ダミーでimage1を指定
        let imageView:UIImageView = UIImageView(image:image1)
        
        // 画像サイズからImageViewの大きさを設定していく
        let rect = CGRect(x:0,
                          y:0,
                          width:imageWidth,
                          height:imageHeight )
        
        imageView.frame = rect
        
        // 画像が画面中央にくるように位置合わせ
        imageView.center = CGPoint(x:screenWidth/2, y:screenHeight/2)
        
        // view に追加する
        self.view.addSubview(imageView)
        
        // 画像Arrayをアニメーションにセット
        imageView.animationImages = imageListArray
        
        // 間隔（秒単位）
        imageView.animationDuration = 3
        // 繰り返し
        imageView.animationRepeatCount = 1
        
        // アニメーションを開始
        imageView.startAnimating()
        
        // アニメーションを終了
//        imageView.stopAnimating()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
