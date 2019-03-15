//
//  ViewController.swift
//  projectHeightWeight
//
//  Created by Denis Andreev on 18.02.2019.
//  Copyright © 2019 353. All rights reserved.
//

import UIKit

class ViewController: UIViewController, MyProtocol, Alert{
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var height: UITextField!
    
    
    var myResult = UIButton()
    var buttonImage = UIImage(named: "1")
    var highlighted = UIImage(named: "2")
    
    fileprivate func createMyResult() {
        self.myResult.layer.cornerRadius = 15
        self.myResult.clipsToBounds = true
        self.myResult.frame = CGRect(x: 120, y: 250, width: 70, height: 60)
        self.myResult.setBackgroundImage(buttonImage, for: .normal)
        self.myResult.setBackgroundImage(highlighted, for: .highlighted)
        self.myResult.addTarget(self, action: #selector(resultButton(param:)), for: .touchDown)
        self.myResult.addTarget(self, action: #selector(resultButton1(param:)), for: .touchDown)
        self.myResult.backgroundColor = .red
        self.view.addSubview(myResult)
    }
    
    override func viewDidLoad() {
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "3")
        self.view.insertSubview(backgroundImage, at: 0)
        createMyResult()
    }
    
    @objc func resultButton(param: UIButton){
        if weight.text! == "" || height.text! == "" {
            label.text = ""
//            createAlert(title: "Error", message: "Not enough data")
            createAlert(title: "Error", message: "No enough data")
            return
        }
        param.shakeAnimation()
        label.text = "\(getResult(weight.text!, height.text!))"
        //        createSecondAlert(title: "Result", message:" \(getResult(weight.text!, height.text!))" )
        weight.text = ""
        height.text = ""
    }
    
    @objc func resultButton1(param: UIButton){
    }
    
    func createAlert(title:String, message:String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Okey", style: .default))
        self.present(alert,animated: true, completion: nil )
    }
    
    
}

//extension ViewController: UITextFieldDelegate{
//
//    public func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool{
//        let helper = Helper()
//        let login = self.weight.text ?? ""
//        self.weight.textColor = .green
//        if !helper.chekLogin(self.weight.text ?? ""){
//            self.weight.textColor = .red
//        }
//        return true
//    }
//}


