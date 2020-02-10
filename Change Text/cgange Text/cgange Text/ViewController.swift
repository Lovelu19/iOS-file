//
//  ViewController.swift
//  cgange Text
//
//  Created by Admin on 1/12/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var (x,y) = (1,1)
    @IBOutlet weak var label: UILabel!
    
    @IBAction func changeLabel(_ sender: Any) {
        if y%2 != 0{
    label.text="\(x)"
            x+=1;y+=1
            
        }else{
            
      label.text="-\(x-1)"
            y+=1
            
        }
        
    }
    
}

