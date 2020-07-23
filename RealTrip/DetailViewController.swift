//
//  DetailViewController.swift
//  RealTrip
//
//  Created by GW_18 on 22/07/2020.
//  Copyright © 2020 GW_18. All rights reserved.
//

import UIKit
import Foundation

class DetailViewController:UIViewController{
    @IBOutlet var topLabel: UILabel?
    @IBOutlet var viewImage: UIImageView?
    
    var spotTrip = TripSpot(spot: A , whattodo:"텐트, 카약, 오리배 등등", feature: [a,priceLevel(15000)], image: "한강1", food: "명동교자(교자), 맘마미아(빵), 오레노카츠(돈까스), 이태원더고깃집(고기), 송쉐프(중식), 성수아구찜(한식)", hotel: ["hotel"], money: "15000")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewImage?.layer.borderWidth = 3
        viewImage?.layer.borderColor = UIColor.black.cgColor
        viewImage?.layer.cornerRadius = 10
        
        topLabel?.text = spotTrip.spot
        viewImage?.image = UIImage(named: spotTrip.image)
        
          switch gModelUser.price {
           case .cheap:
           spotTrip.hotel = ["서울앤호텔 동대문", "호텔 파나실 명동"]
           
           case .expensive:
           spotTrip.hotel = ["시드니에서울","서울 신라 호텔"]
        }
     
        
    }
//
//
//
//    enum spotHotel{
//        enum seoul{
//            case expensive
//            case cheap
//        }
//        enum busan{
//            case expensive
//            case cheap
//        }
//    }
//    var HotelSpot:spotHotel.seoul = spotHotel.seoul.expensive
//
//    }
//
//
//    enum spotFood{
//        case seoul, busan, jeju
//    }
//    var FoodSpot:spotFood = spotFood.seoul
}
