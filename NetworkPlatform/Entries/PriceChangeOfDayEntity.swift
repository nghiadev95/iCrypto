//
//  PriceChangeOfDayEntity.swift
//  NetworkPlatform
//
//  Created by Stuart Nguyen on 9/1/20.
//  Copyright © 2020 Nghia Nguyen. All rights reserved.
//

import Foundation
import Domain

struct PriceChangeOfDayEntity: Codable {
    let value: String
    let percent: String

    enum CodingKeys: String, CodingKey {
        case value = "price_change"
        case percent = "price_change_pct"
    }
}

extension PriceChangeOfDayEntity {
    func asDomain() -> PriceChangeOfDay {
        return .init(value: value, percent: percent)
    }
}
