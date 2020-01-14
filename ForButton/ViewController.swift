//
//  ViewController.swift
//  ForButton
//
//  Created by Fujii Yuta on 2020/01/14.
//  Copyright © 2020 Fujii Yuta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    /*
     
     課題
     ・for文を用いてプログラムでUIButtonを3×3個作成し、
     ・それぞれタップした後、
     ・ナビゲーションコントローラーによって画面遷移を行い
     ・遷移先画面をそれぞれ異なるbackGroundColorにしてください。
     
     制限:遷移先画面は1つのコントローラーで作成すること
     
     */
    
    
    /*過去のソースコード使います*/
    
    
    var imageButton:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0...8{
            imageButton = UIButton()
            
            switch i {
            case 0,1,2:
                imageButton.tag = i
                imageButton.frame = CGRect(x: CGFloat(i) * self.view.frame.size.width/3, y: self.view.frame.size.width/3 * 1, width: self.view.frame.width/3, height: self.view.frame.size.width/3)
                imageButton.setImage(UIImage(named: "\(i).jpg"), for: .normal)
                imageButton.addTarget(self, action: #selector(tapButton(_ :)), for: .touchUpInside)
                break
                
            case 3,4,5:
                imageButton.tag = i
                imageButton.frame = CGRect(x: CGFloat(i-3) * self.view.frame.size.width/3, y: self.view.frame.size.width/3 * 2, width: self.view.frame.width/3, height: self.view.frame.size.width/3)
                imageButton.setImage(UIImage(named: "\(i).jpg"), for: .normal)
                imageButton.addTarget(self, action: #selector(tapButton(_ :)), for: .touchUpInside)
                break
                
                
            case 6,7,8:
                imageButton.tag = i
                imageButton.frame = CGRect(x: CGFloat(i-6) * self.view.frame.size.width/3, y: self.view.frame.size.width/3 * 3, width: self.view.frame.width/3, height: self.view.frame.size.width/3)
                imageButton.setImage(UIImage(named: "\(i).jpg"), for: .normal)
                imageButton.addTarget(self, action: #selector(tapButton(_ :)), for: .touchUpInside)
                break
                
            default:
                break
            }
            self.view.addSubview(imageButton)
        }
    }

    @objc func tapButton(_ sender:UIButton){
        print(sender.tag)
    }

}

