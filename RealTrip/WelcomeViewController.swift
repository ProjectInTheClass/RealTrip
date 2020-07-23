//
//  WelcomeViewController.swift
//  RealTrip
//
//  Created by GW_18 on 23/07/2020.
//  Copyright © 2020 GW_18. All rights reserved.
//

import UIKit
import Foundation


var gModelUser = UserModel(place: .city, price: .cheap, style: .tradition)




class WelcomeViewController:UIViewController{
    @IBAction func touch1(_ sender: Any){
        gModelUser.place = .city
        
    }
   
    @IBAction func touch2(_ sender: Any) {
        gModelUser.place = .ocean
    }
    @IBAction func touch3(_ sender: Any) {
        gModelUser.price = .cheap
    }
    @IBAction func touch4(_ sender: Any) {
        gModelUser.price = .expensive
    }
    @IBAction func touch5(_ sender: Any) {
        gModelUser.style = .modern
        
        self.navigationController?.popToRootViewController(animated: true)
    }
    @IBAction func touch6(_ sender: Any) {
        gModelUser.style = .extreme
        
        self.navigationController?.popToRootViewController(animated: true)
    }
    @IBAction func touch7(_ sender: Any) {
        gModelUser.style = .tradition
        
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    
    @IBOutlet weak var preferImage: UIImageView!
        @IBOutlet weak var ipreferImage: UIImageView!
        
        
        

    
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            preferImage?.image = UIImage(named: "여행지추천")
            ipreferImage?.image = UIImage(named: "이색여행지추천")
            
            if gModelUser.price == .cheap && gModelUser.style == .extreme {
                location = ["한강"]
            }
            else if gModelUser.price == .cheap && gModelUser.style == .modern{
                location = ["남산타워","예술의전당","명동","롯데월드타워"]
            }
            else if gModelUser.price == .cheap && gModelUser.style == .tradition{
                location = ["북촌한옥마을","경복궁"]
            }
            else if gModelUser.price == .expensive && gModelUser.style == .extreme{
                location = ["한강","롯데월드"]
            }
            else if gModelUser.price == .expensive && gModelUser.style == .modern{
                location = ["남산타워","예술의전당","롯데월드타워"]
            }
            else if gModelUser.price == .expensive && gModelUser.style == .tradition{
                location = ["경복궁"]
            }
            
            
    }
    
        
    
}
//전역변수

