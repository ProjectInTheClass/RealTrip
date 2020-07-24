//
//  ScrollViewController.swift
//  RealTrip
//
//  Created by GW_18 on 23/07/2020.
//  Copyright © 2020 GW_18. All rights reserved.
//

import UIKit
import Foundation

class ScrollViewController: UIViewController {
    @IBOutlet var cost:UILabel?
    @IBOutlet var play:UILabel?
    @IBOutlet var food:UILabel?
    @IBOutlet var hotel:UILabel?
    
    
    var spotTrip = TripSpot(spot: A, whattodo:"텐트, 카약, 오리배 등등", feature: [a,priceLevel(15000)], image: "한강1", food: "명동교자(교자), 맘마미아(빵), 오레노카츠(돈까스), 이태원더고깃집(고기), 송쉐프(중식), 성수아구찜(한식)", hotel: [""], money: "15000")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        if spotTrip.spot == ""{
            food?.text = ""
            hotel?.text = ""
        }
        else{
        
        food?.text = spotTrip.food
        
        switch gModelUser.price {
        case .cheap:
        spotTrip.hotel = ["서울앤호텔 동대문", "호텔 파나실 명동"]
        
        case .expensive:
        spotTrip.hotel = ["시드니에서울","서울 신라 호텔"]
        }
        }
        let stringHotel = spotTrip.hotel.joined(separator: ",")
        hotel?.text = stringHotel
    
        if spotTrip.spot == "한강"{
            spotTrip = arraySpot[0]
        }
        else if spotTrip.spot == "남산타워"{
            spotTrip = arraySpot[1]
        }
        else if spotTrip.spot == "예술의전당"{
            spotTrip = arraySpot[2]
        }
        else if spotTrip.spot == "롯데월드"{
            spotTrip = arraySpot[3]
        }
        else if spotTrip.spot == "북촌한옥마을"{
            spotTrip = arraySpot[4]
        }
        else if spotTrip.spot == "경복궁"{
            spotTrip = arraySpot[5]
        }
        else if spotTrip.spot == "명동"{
            spotTrip = arraySpot[6]
        }
        else if spotTrip.spot == "롯데월드타워"{
            spotTrip = arraySpot[7]
        }
        else if spotTrip.spot == ""{
            spotTrip = TripSpot(spot: "", whattodo: "", feature: [""], image: "", food: "", hotel: [""], money: "")
        }
        
        
        if spotTrip.spot == ""{
            cost?.text = ""
            play?.text = ""
        }
        else{
        cost?.text = spotTrip.money + "원 (성인기준)"
        play?.text = spotTrip.whattodo
        }
    }
    
    
    
}
