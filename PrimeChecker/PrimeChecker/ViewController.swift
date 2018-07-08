//
//  ViewController.swift
//  PrimeChecker
//
//  Created by David Hincapie on 8/25/16.
//  Copyright © 2016 David Hincapie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var primeLabel: UILabel!
    
    @IBOutlet weak var notPrimeLabel: UILabel!
    
    @IBOutlet weak var checkBtn: UIButton!
    
    @IBOutlet weak var input: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        primeLabel.hidden = true
        notPrimeLabel.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func checkPrime(sender: AnyObject) {
        if is_prime(Int(input.text!)!){
            primeLabel.hidden = false
            notPrimeLabel.hidden = true
        }else{
            notPrimeLabel.hidden = false
            primeLabel.hidden = true
        }
        
        
        
    }

    
    func is_prime(n: Int) -> Bool {
        if n <= 1 {
            return false
        }
        if n <= 3 {
            return true
        }
        var i = 2
        while i*i <= n {
            if n % i == 0 {
                return false
            }
            i = i + 1
        }
        return true
    }

    
}

