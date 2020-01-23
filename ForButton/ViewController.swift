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
                imageButton.setTitle("\(i)", for: .normal)
                imageButton.addTarget(self, action: #selector(tapButton(_ :)), for: .touchUpInside)
                break
                
            case 3,4,5:
                imageButton.tag = i
                imageButton.frame = CGRect(x: CGFloat(i-3) * self.view.frame.size.width/3, y: self.view.frame.size.width/3 * 2, width: self.view.frame.width/3, height: self.view.frame.size.width/3)
                imageButton.setTitle("\(i)", for: .normal)
                imageButton.addTarget(self, action: #selector(tapButton(_ :)), for: .touchUpInside)
                break
                
                
            case 6,7,8:
                imageButton.tag = i
                imageButton.frame = CGRect(x: CGFloat(i-6) * self.view.frame.size.width/3, y: self.view.frame.size.width/3 * 3, width: self.view.frame.width/3, height: self.view.frame.size.width/3)
                imageButton.setTitle("\(i)", for: .normal)
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
        
        for i in 0...8{
            
            switch i {
                
                
            case 0:
                //画面遷移
                let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "nextViewCotroller") as! NextViewController
                nextVC.passedColor = .red
                
                //ナビゲーションコントローラを継承しているために,こちらのコードで画面遷移できる。
                self.navigationController?.pushViewController(nextVC, animated: true)
                break
                
            case 1:
                let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "nextViewCotroller") as! NextViewController
                nextVC.passedColor = .black
                self.navigationController?.pushViewController(nextVC, animated: true)
                break
            case 2:
                let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "nextViewCotroller") as! NextViewController
                nextVC.passedColor = .blue
                self.navigationController?.pushViewController(nextVC, animated: true)
                break
            case 3:
                let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "nextViewCotroller") as! NextViewController
                nextVC.passedColor = .brown
                self.navigationController?.pushViewController(nextVC, animated: true)
                break
            case 4:
                let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "nextViewCotroller") as! NextViewController
                nextVC.passedColor = .cyan
                self.navigationController?.pushViewController(nextVC, animated: true)
                break
            case 5:
                let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "nextViewCotroller") as! NextViewController
                nextVC.passedColor = .darkGray
                self.navigationController?.pushViewController(nextVC, animated: true)
                break
            case 6:
                let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "nextViewCotroller") as! NextViewController
                nextVC.passedColor = .green
                self.navigationController?.pushViewController(nextVC, animated: true)
                break
            case 7:
                let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "nextViewCotroller") as! NextViewController
                nextVC.passedColor = .magenta
                self.navigationController?.pushViewController(nextVC, animated: true)
                break
            case 8:
                let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "nextViewCotroller") as! NextViewController
                nextVC.passedColor = .orange
                self.navigationController?.pushViewController(nextVC, animated: true)
                break
            default:
                break
            }
        }
        
    }
    
    //prepareでUIColorの情報を入れて、表示した画面を変更する
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "next" {
//            let nextVC = segue.destination as! NextViewController
//
//
//        }
//    }
}

