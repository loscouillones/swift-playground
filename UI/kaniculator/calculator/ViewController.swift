//
//  ViewController.swift
//  calculator
//
//  Created by Nico on 24/06/2019.
//  Copyright © 2019 Nico. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var numberOnScreen:Double = 0
    var previousNumber:Double = 0
    
    var resultNumber: Double = 0
    
    var performingMath = false
    var operation:Int = 0
    
    
    @IBOutlet var label: UILabel!
    
    
    
    
  //  @IBOutlet weak var nums: UIButton!
    
    
    @IBAction func numbers(_ sender: UIButton)
    {
    
        
        if performingMath == true
        {
            label.text = String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
            performingMath = false
        }
        else
        {
            label.text = label.text! + String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
        }
        

    }
   
    @IBAction func buttons(_ sender: UIButton)
    {
     
        
      //  label.text = String(sender.tag)

        /*
     
        if sender.tag == 12 //Divide
        {
            label.text = "/"
        }
        else if sender.tag == 13 //Multiply
        {
            label.text = "*"
        }
        else if sender.tag == 14 //Minus
        {
            label.text = "-"
        }
        else if sender.tag == 15 //Plus
        {
            label.text = "+"
        }
        */
        
        if label.text != "" && sender.tag != 11 && sender.tag != 16
             {
                previousNumber = Double(label.text!)!
                
                if sender.tag == 12 //Divide
                {
                    label.text = "/"
                }
                else if sender.tag == 13 //Multiply
                {
                    label.text = "*"
                }
                else if sender.tag == 14 //Minus
                {
                    label.text = "-"
                }
                else if sender.tag == 15 //Plus
                {
                    label.text = "+"
                }
           
                operation = sender.tag
                performingMath = true
                
                 }
        else if sender.tag == 16
        {
            if operation == 12
            {
                label.text = String(previousNumber / numberOnScreen)
            }
            else if operation == 13
            {
                label.text = String(previousNumber * numberOnScreen)
            }
            else if operation == 14
            {
                label.text = String(previousNumber - numberOnScreen)
            }
            else if operation == 15
            {
                label.text = String(previousNumber + numberOnScreen)
            }
        }
        else if sender.tag == 11
        {
            label.text = ""
            previousNumber = 0
            numberOnScreen = 0
            operation = 0
        }
/*
         
        if label.text != "" && sender.tag != 11 && sender.tag != 16
        {
        previousNumber = numberOnScreen //Double(label.text!)!
            
            if sender.tag == 12 //Divide
            {
                label.text = "/"
            }
            else if sender.tag == 13 //Multiply
            {
                label.text = "x"
            }
            else if sender.tag == 14 //Minus
            {
                label.text = "-"
            }
            else if sender.tag == 15 //Plus
            {
                label.text = "+"
            }
            
            operation = sender.tag
            performingMath = true
        }
        else if sender.tag == 16
        {
            if operation == 12
            {
                label.text = String(previousNumber / numberOnScreen)
            }
            else if operation == 13
            {
                label.text = String(previousNumber * numberOnScreen)
            }
            else if operation == 14
            {
                label.text = String(previousNumber - numberOnScreen)
            }
            else if operation == 15
            {
                label.text = String(previousNumber + numberOnScreen)
            }
        }
        else if sender.tag == 11
        {
            label.text = ""
            previousNumber = 0
            numberOnScreen = 0
            operation = 0
        }
 */
    }

    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
              // Do any additional setup after loading the view, typically from a nib.
    }
    
   
}

