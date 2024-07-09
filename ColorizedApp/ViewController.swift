//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Анастасия Восколович on 01.07.2024.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet var showingView: UIView!
    @IBOutlet var redSlidersValue: UILabel!
    @IBOutlet var greenSlidersValue: UILabel!
    @IBOutlet var blueSlidersValue: UILabel!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showingView.layer.cornerRadius = 30
        setupSliders()
    }

    @IBAction func changeRedColor() {
        redSlidersValue.text = String(format: "%.2f", redSlider.value)
        changeViewBackgroundColor()
    }
    @IBAction func changeGreenColor() {
        greenSlidersValue.text = String(format: "%.2f", greenSlider.value)
        changeViewBackgroundColor()
    }
    @IBAction func changeBlueColor() {
        blueSlidersValue.text = String(format: "%.2f", blueSlider.value)
        changeViewBackgroundColor()
    }
    
    private func changeViewBackgroundColor() {
        showingView.backgroundColor = .init(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    //MARK: Sliders setup
    private func setupSliders() {
        redSlider.value = 0
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.minimumTrackTintColor = .red
        
        greenSlider.value = 0
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.minimumTrackTintColor = .green

        
        blueSlider.value = 0
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.minimumTrackTintColor = .blue
    }
}

