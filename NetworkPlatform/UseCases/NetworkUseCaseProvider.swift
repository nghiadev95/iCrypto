//
//  NetworkUseCaseProvider.swift
//  iCrypto
//
//  Created by Stuart Nguyen on 9/2/20.
//  Copyright © 2020 Nghia Nguyen. All rights reserved.
//

import Foundation

struct NetworkUseCaseProvider: UseCaseProvider {
    func makeCurrenciesTickerUseCase() -> CurrenciesTickerUseCase {
        return NetworkCurrenciesTickerUseCase()
    }
}
