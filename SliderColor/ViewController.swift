//
//  ViewController.swift
//  SliderColor
//
//  Created by Юрий Константинов on 22.08.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var viewColor: UIView!
    @IBOutlet var labelRed: UILabel!
    @IBOutlet var labelGreen: UILabel!
    @IBOutlet var labelBlue: UILabel!
    
    @IBOutlet var sliderRedView: UISlider!
    @IBOutlet var sliderGreenView: UISlider!
    @IBOutlet var sliderBlueView: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewColor.layer.cornerRadius = 10
        
    }
    
    @IBAction func sliderColor() {
        labelRed.text = String(format: "%.2f", sliderRedView.value)
        labelGreen.text = String(format: "%.2f", sliderGreenView.value)
        labelBlue.text = String(format: "%.2f",sliderBlueView.value)
        
        viewColor.backgroundColor = UIColor(
            red: CGFloat(sliderRedView.value),
            green: CGFloat(sliderGreenView.value),
            blue: CGFloat(sliderBlueView.value),
            alpha: 1)
    }
    
    
    
    

}

