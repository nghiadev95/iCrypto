//
//  NetworkUseCaseProvider.swift
//  iCrypto
//
//  Created by Stuart Nguyen on 9/2/20.
//  Copyright © 2020 Nghia Nguyen. All rights reserved.
//

import Domain
import Foundation

public struct NetworkUseCaseProvider: Domain.UseCaseProvider {
    public init() {}
    public func makeCurrencyTickerUseCase() -> Domain.CurrencyTickerUseCase {
        return NetworkCurrencyTickerUseCase()
    }
}
