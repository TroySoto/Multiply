//
//  ViewController.swift
//  Multiply
//
//  Created by TSoto1 on 9/11/15.
//  Copyright (c) 2015 TSoto1. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate
{
    
    @IBOutlet weak var firstNumber: UITextField!
    @IBOutlet weak var mathSign: UILabel!
    @IBOutlet weak var secondNumber: UITextField!
    @IBOutlet weak var totalText: UILabel!
    @IBOutlet weak var controllerVariable: UISegmentedControl!
    @IBOutlet weak var leftImage: UIImageView!
    @IBOutlet weak var rightImage: UIImageView!
   
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func equalButton(sender: AnyObject)
    {
        var one : Int! = firstNumber.text.toInt()!
        var two : Int! = secondNumber.text.toInt()!
        if controllerVariable.selectedSegmentIndex == 0
        {
            let total = one + two
            println(total)
            totalText.text = "\(total)"
            if total == 64
            {
                leftImage.image = UIImage(named: "Left Koopa")
                rightImage.image = UIImage(named: "Right Koopa")
            }
            var odd = total % 2
            if odd == 1
            {
                leftImage.image = UIImage(named: "Lobster")
                rightImage.image = UIImage(named: "Lobster")
            }
            if odd == 0 && total != 64
            {
                leftImage.image = UIImage(named: "Sloth")
                rightImage.image = UIImage(named: "Sloth")
            }
            
        }
        
        if controllerVariable.selectedSegmentIndex == 1
        {
            let total = one - two
            println(total)
            totalText.text = "\(total)"
            if total == 64
            {
                leftImage.image = UIImage(named: "Left Koopa")
                rightImage.image = UIImage(named: "Right Koopa")
            }
            var odd = total % 2
            if odd == 1
            {
                leftImage.image = UIImage(named: "Lobster")
                rightImage.image = UIImage(named: "Lobster")
            }
            if odd == 0 && total != 64
            {
                leftImage.image = UIImage(named: "Sloth")
                rightImage.image = UIImage(named: "Sloth")
            }


        }
        if controllerVariable.selectedSegmentIndex == 2
        {
            let total = one * two
            println(total)
            totalText.text = "\(total)"
            if total == 64
            {
                leftImage.image = UIImage(named: "Left Koopa")
                rightImage.image = UIImage(named: "Right Koopa")
            }
            var odd = total % 2
            if odd == 1
            {
                leftImage.image = UIImage(named: "Lobster")
                rightImage.image = UIImage(named: "Lobster")
            }
            if odd == 0 && total != 64
            {
                leftImage.image = UIImage(named: "Sloth")
                rightImage.image = UIImage(named: "Sloth")
            }


        }
        if controllerVariable.selectedSegmentIndex == 3
        {
            let total = one / two
            println(total)
            totalText.text = "\(total)"
            if total == 64
            {
                leftImage.image = UIImage(named: "Left Koopa")
                rightImage.image = UIImage(named: "Right Koopa")
            }
            var odd = total % 2
            if odd == 1
            {
                leftImage.image = UIImage(named: "Lobster")
                rightImage.image = UIImage(named: "Lobster")
            }
            if odd == 0 && total != 64
            {
                leftImage.image = UIImage(named: "Sloth")
                rightImage.image = UIImage(named: "Sloth")
            }


        }
       
    }
    
    
    
    @IBAction func segmentedController(sender: AnyObject)
    {
        if controllerVariable.selectedSegmentIndex == 0
        {
            mathSign.text = "+"
        }
        if controllerVariable.selectedSegmentIndex == 1
        {
            mathSign.text = "-"
            
        }
        if controllerVariable.selectedSegmentIndex == 2
        {
            mathSign.text = "X"
        }
        if controllerVariable.selectedSegmentIndex == 3
        {
            mathSign.text = "÷"
        }
        
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool
    {
        textField.resignFirstResponder() //dismisses keyboard
        println("return key presses")
        return true
    }
    
    

}

