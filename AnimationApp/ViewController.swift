//
//  ViewController.swift
//  AnimationApp
//
//  Created by Egor Ukolov on 08.01.2024.
//

import Spring

class ViewController: UIViewController {

    
    @IBOutlet var coreAnimationView: UIView!
    @IBOutlet var springAnimationView: SpringView!
    
    
    private var originCoordinate: CGFloat?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        originCoordinate = coreAnimationView.frame.origin.x
    }

    @IBAction func startCoreAnimation(_ sender: UIButton) {
        sender.pulsate()
        
        UIView.animate(withDuration: 0.5,
                       delay: 0,
                       options: [.autoreverse, .repeat],
                       animations: {
            if self.coreAnimationView.frame.origin.x == self.originCoordinate {
                self.coreAnimationView.frame.origin.x -= 40
            } else {
                self.coreAnimationView.frame.origin.x += 40
            }
        })
    }
    
    @IBAction func startSpringAnimation(_ sender: SpringButton) {
        springAnimationView.animation = "wobble"
        springAnimationView.curve = "easeIn"
        springAnimationView.force = 2
        springAnimationView.duration = 3
        springAnimationView.delay = 0
        springAnimationView.animate()
        
        sender.animation = "flipX"
        sender.animate()
    }
    
    
    
}

