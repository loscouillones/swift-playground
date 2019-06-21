//
//  ViewController.swift
//  bmiCalculator
//
//  Created by Nico on 21/06/2019.
//  Copyright © 2019 Nico. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var labelWeightSlider: UILabel!
    @IBOutlet weak var labelHeightSlider: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var sliderWeight: UISlider!
    
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var sliderHeight: UISlider!
    let COLORS = [UIColor.lightGray, UIColor.green, UIColor(red: 203/255, green: 230/255, blue: 0, alpha: 1.0),
        UIColor(red: 214/255, green: 130/255, blue: 99/255, alpha: 1.0), UIColor.red]
    
    let LABELS = [
        "Underweight",
        "Healthy",
        "Overweight",
        "Severly Overweight",
        "Mrobidly Overweight"
    ]
    
    func getBmiLabel(bmi:Double) -> String {
        if bmi < 18.5 {
            return LABELS[0]
        } else if bmi < 25 {
            return LABELS[1]
        } else if bmi < 30 {
            return LABELS[2]
        } else if bmi < 35 {
            return LABELS[3]
        } else {
            return LABELS[4]
        }
    }
    
    func getBMIColor(bmi:Double) -> UIColor {
        if bmi < 18.5 {
            return COLORS[0]
        } else if bmi < 25 {
            return COLORS[1]
        } else if bmi < 30 {
            return COLORS[2]
        } else if bmi < 35 {
            return COLORS[3]
        } else {
            return COLORS[4]
        }
    }
    
    func updateBMIDesc(_ bmi: Double) {
        let color = getBMIColor(bmi: bmi)
        let desc = getBmiLabel(bmi: bmi)
        descLabel.text = desc
        descLabel.backgroundColor = color
    }

    
    func calcBmi() -> Double {
        let weight = sliderWeight.value
        let height = sliderHeight.value
        return Double(weight / (height * height))
    }
    
    func updateBmi() {
        let bmi = calcBmi()
        updateBMIDesc(bmi)
        updateBmiLabel(bmi)
    }
    
    func updateBmiLabel(_ bmi: Double) {
        let bmiStr = String(format: "%.2f", bmi)
        bmiLabel.text = "BMI = \(bmiStr)"
    }
    
    func updateWeightSliderLabel(weight: Float) {
        labelWeightSlider.text = String(format: "%.2f", weight)
        updateBmi()
    }
    
    func updateHeightSliderLabel(height: Float) {
        labelHeightSlider.text = String(format: "%.2f", height)
        updateBmi()
    }
    
    override func viewDidLoad() {

        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // calculate inital bmi
        updateWeightSliderLabel(weight: sliderWeight.value)
        updateHeightSliderLabel(height: sliderHeight.value)
    }

    @IBAction func onWeightChange(_ sender: UISlider) {
        let currentValue = Float(sender.value)
        updateWeightSliderLabel(weight: currentValue)
        print("moved weight slider: \(currentValue)")
    }
    
    @IBAction func onHeightChange(_ sender: UISlider) {
        let currentValue = Float(sender.value)
        updateHeightSliderLabel(height: currentValue)
        print("moved height slider: \(currentValue)")
    }
}

