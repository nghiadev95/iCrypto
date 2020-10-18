//
//  CurrencyTickerEntity.swift
//  NetworkPlatform
//
//  Created by Stuart Nguyen on 9/1/20.
//  Copyright © 2020 Nghia Nguyen. All rights reserved.
//

import Foundation
import Domain

struct CurrencyTickerEntity: Codable {
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
    let priceChangeOfDay: PriceChangeOfDayEntity

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

extension CurrencyTickerEntity {
    func asDomain() -> Domain.CurrencyTicker {
        return .init(identifier: identifier,
                     currency: currency,
                     symbol: symbol,
                     name: name,
                     logoURL: logoURL,
                     price: price,
                     priceDate: priceDate,
                     priceTimestamp: priceTimestamp,
                     circulatingSupply: circulatingSupply,
                     maxSupply: maxSupply,
                     marketCap: marketCap,
                     rank: rank,
                     high: high,
                     highTimestamp: highTimestamp,
                     priceChangeOfDay: priceChangeOfDay.asDomain())
    }
}
