//
//  Helper.swift
//  projectHeightWeight
//
//  Created by Denis Andreev on 18.02.2019.
//  Copyright © 2019 353. All rights reserved.
//

import Foundation

protocol MyProtocol {
    func getResult(_ weight:String,_ height:String ) -> String
}

extension MyProtocol {
    func getResult(_ weight:String,_ height:String ) -> String {
        var result: Double
        let weight1 = Double(weight)
        let height1 = Double(height)
        result = weight1! / (height1! * height1!)
        var result1 = ""
        switch result {
        case 0..<20:
            result1 = "You are thick  " + String(format: "%.2f", result)
        case 20...30:
            result1 = "You are normal  " +  String(format: "%.2f", result)
        case 30...40:
            result1 = "You are fat  " +  String(format: "%.2f", result)
        default:
            break
        }
        return result1
    }
}
