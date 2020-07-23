//
//  UserModel.swift
//  RealTrip
//
//  Created by GW_18 on 23/07/2020.
//  Copyright © 2020 GW_18. All rights reserved.
//

import Foundation

    enum TripPlace {
        case city, ocean
    }

    enum PriceLevel {
        case cheap, expensive
    }

    enum TripStyle {
        case extreme, tradition, modern
    }

    struct UserModel {
        var place: TripPlace
        var price: PriceLevel
        var style: TripStyle
    }



