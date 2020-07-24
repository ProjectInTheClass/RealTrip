//
//  TripSpot.swift
//  RealTrip
//
//  Created by GW_18 on 20/07/2020.
//  Copyright © 2020 GW_18. All rights reserved.
//

import Foundation
import UIKit


struct TripSpot{
    var spot: String
    let whattodo: String
    let feature: [String]
    let image: String
    let food: String
    var hotel: [String]
    let money: String
    
    
    
}

let a = "액티비티"
let b = "빌딩"
let t = "전통"


func priceLevel(_ price: Int) -> String{
    
    var result = ""
    
    if price < 10000{
        result = "Cheap"
    }
    else if price > 40000{
        result = "Exp"
    }
    else{
        result = "Avg"
    }
    return result

    
}
var location:[String] = []
var A:String = location.randomElement()!
var spotTrip = TripSpot(spot: "남산타워" , whattodo:"텐트, 카약, 오리배 등등", feature: [a,priceLevel(15000)], image: "한강1", food: "명동교자(교자), 맘마미아(빵), 오레노카츠(돈까스), 이태원더고깃집(고기), 송쉐프(중식), 성수아구찜(한식)", hotel: ["hotel"], money: "15000")
var arraySpot = [TripSpot(spot:"한강", whattodo:"텐트, 카약, 오리배 등등", feature: [a,priceLevel(15000)], image: "image", food: "명동교자(교자), 맘마미아(빵), 오레노카츠(돈까스), 이태원더고깃집(고기), 송쉐프(중식), 성수아구찜(한식)", hotel: ["hotel"], money: "15000"),
                TripSpot(spot:"남산타워",whattodo:"전망대, 케이블카", feature: [b,priceLevel(11000)], image: "image", food: "명동교자(교자), 맘마미아(빵), 오레노카츠(돈까스), 이태원더고깃집(고기), 송쉐프(중식), 성수아구찜(한식)", hotel: ["hotel"], money: "11000"),
                TripSpot(spot:"예술의전당", whattodo:"음악, 미술 등등",feature: [b,priceLevel(15000)], image: "image", food: "명동교자(교자), 맘마미아(빵), 오레노카츠(돈까스), 이태원더고깃집(고기), 송쉐프(중식), 성수아구찜(한식)", hotel: ["hotel"], money: "15000"),
                TripSpot(spot:"롯데월드", whattodo:"아쿠아리움, 놀이기구",feature: [a,priceLevel(59000)], image: "image", food: "명동교자(교자), 맘마미아(빵), 오레노카츠(돈까스), 이태원더고깃집(고기), 송쉐프(중식), 성수아구찜(한식)", hotel: ["hotel"], money: "59000"),
                TripSpot(spot:"북촌한옥마을", whattodo:"관광",feature: [t,priceLevel(0)], image: "image", food: "명동교자(교자), 맘마미아(빵), 오레노카츠(돈까스), 이태원더고깃집(고기), 송쉐프(중식), 성수아구찜(한식)", hotel: ["명동교자(교자), 맘마미아(빵), 오레노카츠(돈까스), 이태원더고깃집(고기), 송쉐프(중식), 성수아구찜(한식)"], money: "0"),
                TripSpot(spot:"경복궁", whattodo:"관광",feature: [t,priceLevel(3000)], image: "image", food: "명동교자(교자), 맘마미아(빵), 오레노카츠(돈까스), 이태원더고깃집(고기), 송쉐프(중식), 성수아구찜(한식)", hotel: ["명동교자(교자), 맘마미아(빵), 오레노카츠(돈까스), 이태원더고깃집(고기), 송쉐프(중식), 성수아구찜(한식)"], money: "3000"),
                TripSpot(spot:"명동", whattodo:"쇼핑",feature: [b,priceLevel(0)], image: "image", food: "명동교자(교자), 맘마미아(빵), 오레노카츠(돈까스), 이태원더고깃집(고기), 송쉐프(중식), 성수아구찜(한식)", hotel: ["명동교자(교자), 맘마미아(빵), 오레노카츠(돈까스), 이태원더고깃집(고기), 송쉐프(중식), 성수아구찜(한식)"], money: "0"),
                TripSpot(spot:"롯데월드타워", whattodo:"전망대",feature: [b,priceLevel(27000)], image: "image", food: "명동교자(교자), 맘마미아(빵), 오레노카츠(돈까스), 이태원더고깃집(고기), 송쉐프(중식), 성수아구찜(한식)", hotel: ["hotel"], money: "27000")]

 
 /*
  for info in arrayLocInfo{
    if info.isTravel
 }
*/
 
 
 

