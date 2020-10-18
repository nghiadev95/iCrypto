//
//  CurrencyTickerUseCase.swift
//  Domain
//
//  Created by Stuart Nguyen on 9/1/20.
//  Copyright © 2020 Nghia Nguyen. All rights reserved.
//

import Foundation

public protocol CurrencyTickerUseCase {
    func getListCurrencyTicker(currencySymbols: [String], completedHandler: @escaping (Result<[CurrencyTicker], Error>) -> Void)
}
