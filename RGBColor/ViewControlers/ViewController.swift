//
//  ViewController.swift
//  RGBColor
//
//  Created by Kirill Lozovoi on 9/27/22.
//

import UIKit



class ViewController: UIViewController {
   
    // MARK: - IB Outlets
    
    @IBOutlet var VIew: UIView!
    
    @IBOutlet var redLB: UILabel!
    @IBOutlet var greenLB: UILabel!
    @IBOutlet var blueLB: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        VIew.layer.cornerRadius = 20
        setColor()
    }
    
    // MARK: - Actions
    
    @IBAction func sliderAction(_ sender: UISlider) {
        setColor()
        
        redLB.text = string(from: redSlider)
        greenLB.text = string(from: greenSlider)
        blueLB.text = string(from: blueSlider)
    }
    
    // MARK: - Private Metods
    
    private func setColor() {
        VIew.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}
    
