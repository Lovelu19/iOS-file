//
//  ViewController.swift
//  dataPass
//
//  Created by Admin on 12/31/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var input: UITextField!
    
    @IBAction func passdata(_ sender: Any) {
        if input.text != ""{
            performSegue(withIdentifier: "second", sender: self)
        }else{
            print("empty")
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let obj = segue.destination as! page2
        obj.str=input.text!
        
    }

}

