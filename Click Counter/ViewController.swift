//
//  ViewController.swift
//  Click Counter
//
//  Created by Marky Jordan on 3/18/20.
//  Copyright © 2020 Marky Jordan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // label which displays click count
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        view.addSubview(label)
        self.label = label
        
        // increment button
        let incrementButton = UIButton()
        incrementButton.frame = CGRect(x: 150, y: 250, width: 120, height: 60)
        incrementButton.setTitle("Increment", for: .normal)
        incrementButton.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(incrementButton)
        
        // increment button's target action
        incrementButton.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControl.Event.touchUpInside)
        
        // decrement button
        let decrementButton = UIButton()
        decrementButton.frame = CGRect(x: 150, y: 300, width: 120, height: 60)
        decrementButton.setTitle("Decrement", for: .normal)
        incrementButton.setTitleColor(UIColor.red, for: .normal)
        view.addSubview(decrementButton)
        
    }
    
    @objc func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
    }
    
    

}

