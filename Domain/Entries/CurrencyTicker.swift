//
//  CurrencyTicker.swift
//  Domain
//
//  Created by Stuart Nguyen on 9/1/20.
//  Copyright © 2020 Nghia Nguyen. All rights reserved.
//

import Foundation

public struct CurrencyTicker {
    public let identifier: String
    public let currency: String
    public let symbol: String
    public let name: String
    public let logoURL: String
    public let price: String
    public let priceDate: String
    public let priceTimestamp: String
    public let circulatingSupply: String
    public let maxSupply: String
    public let marketCap: String
    public let rank: String
    public let high: String
    public let highTimestamp: String
    public let priceChangeOfDay: PriceChangeOfDay

    public init(
        identifier: String,
        currency: String,
        symbol: String,
        name: String,
        logoURL: String,
        price: String,
        priceDate: String,
        priceTimestamp: String,
        circulatingSupply: String,
        maxSupply: String,
        marketCap: String,
        rank: String,
        high: String,
        highTimestamp: String,
        priceChangeOfDay: PriceChangeOfDay
    ) {
        self.identifier = identifier
        self.currency = currency
        self.symbol = symbol
        self.name = name
        self.logoURL = logoURL
        self.price = price
        self.priceDate = priceDate
        self.priceTimestamp = priceTimestamp
        self.circulatingSupply = circulatingSupply
        self.maxSupply = maxSupply
        self.marketCap = marketCap
        self.rank = rank
        self.high = high
        self.highTimestamp = highTimestamp
        self.priceChangeOfDay = priceChangeOfDay
    }
}
