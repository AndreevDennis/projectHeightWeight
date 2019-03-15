//
//  Alert.swift
//  projectHeightWeight
//
//  Created by Denis Andreev on 26.02.2019.
//  Copyright © 2019 353. All rights reserved.
//

import Foundation
import UIKit
protocol  Alert {
    func createAlert(title:String, message:String)
}

extension Alert {
    func createAlert(title:String, message:String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Okey", style: .default))
//        self .present(alert,animated: true, completion: nil )
    }
}
