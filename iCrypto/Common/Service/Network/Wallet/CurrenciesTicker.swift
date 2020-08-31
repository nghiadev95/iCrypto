//
//  CurrenciesTicker.swift
//  iCrypto
//
//  Created by Nguyen Nghia on 8/31/20.
//  Copyright © 2020 Nghia Nguyen. All rights reserved.
//

import Foundation

// MARK: - CurrenciesTicker

struct CurrenciesTicker: Codable {
    let identifier, currency, symbol, name: String
    let logoURL: String
    let price: String
    let priceDate, priceTimestamp: String
    let circulatingSupply, maxSupply, marketCap, rank: String
    let high: String
    let highTimestamp: String
    let priceChangeOfDay: PriceChangeOfDay

    enum CodingKeys: String, CodingKey {
        case identifier = "id"
        case currency, symbol, name
        case logoURL = "logo_url"
        case price
        case priceDate = "price_date"
        case priceTimestamp = "price_timestamp"
        case circulatingSupply = "circulating_supply"
        case maxSupply = "max_supply"
        case marketCap = "market_cap"
        case rank, high
        case highTimestamp = "high_timestamp"
        case priceChangeOfDay = "1d"
    }
}

// MARK: - PriceChangeOfDay

struct PriceChangeOfDay: Codable {
    let value: String
    let percent: String

    enum CodingKeys: String, CodingKey {
        case value = "price_change"
        case percent = "price_change_pct"
    }
}
