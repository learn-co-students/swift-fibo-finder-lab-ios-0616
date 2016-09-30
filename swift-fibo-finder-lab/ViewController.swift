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
        arrayWithFibonacciSequenceToIndex(6)
    }
    
    func arrayWithFibonacciSequenceToIndex(index: Int) -> [Int]{
        
        var previousNumberFirst = 0
        var previousNumberSecond = 1
        var fiboArray: [Int] = []
        
        if index >= 0 || !fiboArray.isEmpty {
            fiboArray.append(0)
            print(fiboArray)
        }
        if index == 1 {
            fiboArray.append(index)
            print(fiboArray)
            
        } else {
            for _ in 0..<index {
                let temp = previousNumberFirst
                previousNumberFirst = previousNumberSecond
                previousNumberSecond = temp + previousNumberSecond
                fiboArray.append(previousNumberFirst)
                print(fiboArray)
            }
        }
        return fiboArray
    }
}