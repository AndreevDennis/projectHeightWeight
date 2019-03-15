//
//  NewButton.swift
//  projectHeightWeight
//
//  Created by Denis Andreev on 21.02.2019.
//  Copyright © 2019 353. All rights reserved.
//

//import Foundation
import UIKit

extension UIButton {
     func pulsation(){
        let puls = CASpringAnimation(keyPath: "transform.scale")
        puls.duration = 0.6
        puls.fromValue = 0.95
        puls.toValue = 1.0
        puls.autoreverses = true
        puls.repeatCount = 2
        puls.initialVelocity = 0.5
        puls.damping = 1.0
        
        layer.add(puls, forKey: nil)
    }
      func shakeAnimation(){
        let shake = CASpringAnimation(keyPath: "position")
        shake.duration = 1.0
        shake.repeatCount = 100
        shake.autoreverses = true
        
        let fromPoint = CGPoint(x: center.x-5, y: center.y)
        let fromValue =  NSValue(cgPoint: fromPoint)
        
        let toPoint = CGPoint(x: center.x+5, y: center.y)
        let toValue = NSValue(cgPoint: toPoint)
        shake.fromValue = fromValue
        shake.toValue = toValue
        layer.add(shake, forKey: nil)
    }
}
