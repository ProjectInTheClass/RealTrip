//
//  PreferenceViewController.swift
//  RealTrip
//
//  Created by GW_18 on 23/07/2020.
//  Copyright © 2020 GW_18. All rights reserved.
//

import UIKit
import Foundation

class PreferenceViewController:UIViewController{
    
    @IBOutlet weak var preferImage: UIImageView!
    @IBOutlet weak var ipreferImage: UIImageView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        preferImage?.image = UIImage(named: "여행지추천")
        ipreferImage?.image = UIImage(named: "이색여행지추천")
        
        
    
}


}














































































