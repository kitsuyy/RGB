//
//  ViewController.swift
//  RGBColor
//
//  Created by Kirill Lozovoi on 9/27/22.
//

import UIKit



class SettingViewController: UIViewController {
   
    // MARK: - IB Outlets
    
    @IBOutlet var rgbView: UIView!
    
    @IBOutlet var redLB: UILabel!
    @IBOutlet var greenLB: UILabel!
    @IBOutlet var blueLB: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    // MARK: - Delegate

    var mainViewColor: UIColor!
    var delegate: SetMainViewControllerDelegate!
    
    // MARK: - ViewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rgbView.layer.cornerRadius = 20
        setColor()
        setupValue()
    }
    
    // MARK: - Actions
    
    @IBAction func sliderAction(_ sender: UISlider) {
        setColor()
        
        redLB.text = string(from: redSlider)
        greenLB.text = string(from: greenSlider)
        blueLB.text = string(from: blueSlider)
    }
    
    
    @IBAction func DidButtonDidPressed(_ sender: UIButton) {
        dismiss(animated: true)
        delegate.setColor(rgbView.backgroundColor ?? .white)
    }
    
    // MARK: - Private Metods
    private func setupValue() {
        redLB.text = string(from: redSlider)
        greenLB.text = string(from: greenSlider)
        blueLB.text = string(from: blueSlider)
    }
    
    private func setColor() {
        rgbView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}

    
