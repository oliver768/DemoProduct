//
//  ViewController.swift
//  DemoProduct
//
//  Created by Ravindra Sonkar on 04/12/19.
//  Copyright © 2019 Ravindra Sonkar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var primeNumArr = [1]

    override func viewDidLoad() {
        super.viewDidLoad()
        print(LCM(30, secondNumber: 9))
        
        // Do any additional setup after loading the view.
    }

    func HCF (_ firstNumber : Int, secondNumber : Int) -> Int{
        let firstNumberFactor = factors(firstNumber)
        primeNumArr = [1]
        let secondNumberFactor = factors(secondNumber)
        var hcfArr = [Int]()
        for i in firstNumberFactor {
            for j in secondNumberFactor {
                if i == j {
                    hcfArr.append(i)
                    break
                }
            }
        }
        return hcfArr.reduce(1) { $0 * $1 }
    }

    func LCM(_ firstNember : Int, secondNumber : Int) -> Int {
        let hcf = HCF(firstNember, secondNumber: secondNumber)
        return (firstNember * secondNumber)/hcf
    }
    
    
    func factors(_ number : Int) -> [Int] {
        if number == 1 {
            return primeNumArr
        }
        var i = 2
        while i <= number {
            if number % i == 0 {
                primeNumArr.append(i)
                return factors( number / i)
            }
            i += 1
        }
        return primeNumArr
        
    }
}

