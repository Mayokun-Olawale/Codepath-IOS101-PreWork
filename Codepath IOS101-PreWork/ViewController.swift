//
//  ViewController.swift
//  Codepath IOS101-PreWork
//
//  Created by Mayokun Olawale on 1/15/25.
//

import UIKit

class ViewController: UIViewController {
    
    let colors: [UIColor] = [
            UIColor.red,
            UIColor.green,
            UIColor.blue,
            UIColor.yellow,
            UIColor.orange,
            UIColor.purple
        ]
    var currentIndex: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = colors[currentIndex]
    }
    

       
    @IBAction func PrevColorChange(_ sender: UIButton) {
        currentIndex = (currentIndex - 1 + colors.count) % colors.count
                view.backgroundColor = colors[currentIndex]
    }
    
    @IBAction func NextColorChange(_ sender: UIButton) {
        currentIndex = (currentIndex + 1) % colors.count
                view.backgroundColor = colors[currentIndex]
    }
    
}

