//
//  TripSpot.swift
//  RealTrip
//
//  Created by GW_18 on 20/07/2020.
//  Copyright © 2020 GW_18. All rights reserved.
//

import Foundation
import UIKit

class TripSpot{
    
    var temp : String? = nil//지역의 온도(지역 추천 때 사용)
    var feature : String? = nil//지역의 특징(지역 추천 때 사용)
    var image : [UIImage]? = nil//지역을 나타내는 사진들
    var course : String? = nil//근처 관광코스 추천
    var preference : String? = nil//선호도 점수로 표현

    func info(_ location: String) -> [String?]{
    
        
        if location == "서울"{
            temp = "22"
            feature = "도시"
            image = []
            course = "남산타워, 롯데타워"
            preference = "5"
            
        }
        else if location == "제주도"{
            temp = "25"
            feature = "섬"
            image = []
            course = ""
            preference = "5"
        }
        
        var result = [temp, feature, course, preference]
        return result
    }
}
 let spotTrip = TripSpot()
 let B = "서울"
let C = "제주도"
 let place = spotTrip.info(C)





