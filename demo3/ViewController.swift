//
//  ViewController.swift
//  demo3
//
//  Created by 邱詠婕 on 2022/10/17.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var msgLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //父類別
    class Animal{
        var skill :String = ""
        func speak(name:String) -> String{
            return "My name is \(name)"
        }
    }
    //子類別
    class Cat : Animal{
        override func speak(name: String) -> String {
            return "My name is \(name),and I can \(skill)"
        }
    }
    
    class Dog : Animal{
        override init() {
            super.init()//調用父類的初始化器
            super.skill = "chasing my tail"
        }
    }
    
    //按鈕事件
    @IBAction func catBtn(_ sender: Any) {
        let yellowCat = Cat()
        yellowCat.skill = "jump high"
        let str = yellowCat.speak(name: "小山")
        
        msgLabel.text = str
    }
    
    
    @IBAction func dogBtn(_ sender: Any) {
        let whiteDog = Dog()
        
        msgLabel.text = whiteDog.speak(name: "小吉")+"and I love "+whiteDog.skill
    }
    
}

