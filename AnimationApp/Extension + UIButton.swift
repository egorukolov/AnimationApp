//
//  Extension + UIButton.swift
//  AnimationApp
//
//  Created by Egor Ukolov on 08.01.2024.
//

import UIKit

extension UIButton {
    func pulsate() {
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.fromValue = 0.95
        pulse.toValue = 1
        pulse.duration = 0.6
        pulse.autoreverses = true
        pulse.repeatCount = 2
        pulse.initialVelocity = 0.1
        pulse.damping = 0.1
        
        layer.add(pulse, forKey: nil)
    }
}
