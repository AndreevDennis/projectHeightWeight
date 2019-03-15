//
//  Helper1.swift
//  projectHeightWeight
//
//  Created by Denis Andreev on 19.02.2019.
//  Copyright © 2019 353. All rights reserved.
//

import Foundation

class Helper{
    func chekLogin (_ login : String)->Bool{
        let loginRegEx = "^[0-9]*$" // change for normal
        do{
            let regular  = try NSRegularExpression(pattern: loginRegEx)
            let nsString = login as  NSString
            let result =  regular.matches(in: loginRegEx, range: NSRange(location: 0, length: nsString.length))
            
            if result.count  == 0 {
                return false
            }
        } catch let error as NSError{
            print("Error \(error.localizedDescription)")
            return false
        }
        return true
    }
}
