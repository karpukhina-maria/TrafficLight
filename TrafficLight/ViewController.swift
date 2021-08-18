//
//  ViewController.swift
//  TrafficLight
//
//  Created by Mary Jane on 18.08.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
        
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        
        startButton.layer.cornerRadius = 10
    }
    
    @IBAction func startButtonPressed() {
        switchLight()
    }
    
    func switchLight() {
        
        if redView.alpha == 1 {
            redView.alpha = 0.3
            yellowView.alpha = 1
        } else if yellowView.alpha == 1 {
            yellowView.alpha = 0.3
            greenView.alpha = 1
        } else if greenView.alpha == 1 {
            greenView.alpha = 0.3
            redView.alpha = 1
        } else {
            startButton.setTitle("NEXT", for: .normal)
            redView.alpha = 1
        }
        
    }
    
}

