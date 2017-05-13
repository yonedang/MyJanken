//
//  ViewController.swift
//  MyJanken
//
//  Created by 米田 央 on 2017/05/13.
//  Copyright © 2017年 Swift-Yoneda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  @IBOutlet weak var answerImageView: UIImageView!
  
  @IBOutlet weak var answerLabel: UILabel!
  
  //じゃんけん（数字）
  var answerNumber:UInt32 = 0
  
  @IBAction func shuffleAction(_ sender: Any) {
    
//    answerNumber = arc4random_uniform(3)
    
    var newAnswerNumber:UInt32 = 0
    
    repeat{
      newAnswerNumber = arc4random_uniform(3)
    } while answerNumber == newAnswerNumber
    
    answerNumber = newAnswerNumber
    
    if answerNumber == 0 {
      //グー
      answerLabel.text = "グー"
      answerImageView.image = UIImage(named: "gu")
    } else if answerNumber == 1 {
      //チョキ
      answerLabel.text = "チョキ"
      answerImageView.image = UIImage(named: "choki")
    } else if answerNumber == 2 {
      //パー
      answerLabel.text = "パー"
      answerImageView.image = UIImage(named: "pa")
    }
    
//    //次のじゃんけん
//    answerNumber = answerNumber + 1
    
  }
  
  

}

