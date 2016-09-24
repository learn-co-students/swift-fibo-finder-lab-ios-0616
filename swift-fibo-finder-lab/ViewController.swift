//
//  ViewController.swift
//  swift-fibo-finder-lab
//
//  Created by Flatiron School on 9/6/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        arrayWithFibonacciSequenceToIndex(5)
    }
    
    func arrayWithFibonacciSequenceToIndex(index: Int) -> [Int]{
        
        var fiboArray: [Int] = []
        var a = 0
        var b = 1
        
        if index == 0 {
            fiboArray.append(0)
        } else if index >= 1 {
        for _ in 0 ..< index {
            (a, b) = (b, a + b)
            fiboArray.append(a)
        }
        print("Array with Fibonacci sequence to index \(index) will be \(fiboArray)")
        } else {
            print("The index has negative value.")
        }
        return fiboArray
    }

}

