//
//  CurrenciesTicker.swift
//  Domain
//
//  Created by Stuart Nguyen on 9/1/20.
//  Copyright © 2020 Nghia Nguyen. All rights reserved.
//

import Foundation

struct CurrenciesTicker {
    let identifier: String
    let currency: String
    let symbol: String
    let name: String
    let logoURL: String
    let price: String
    let priceDate: String
    let priceTimestamp: String
    let circulatingSupply: String
    let maxSupply: String
    let marketCap: String
    let rank: String
    let high: String
    let highTimestamp: String
    let priceChangeOfDay: PriceChangeOfDay
}
