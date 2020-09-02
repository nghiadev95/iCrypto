//
//  UseCaseProvider.swift
//  iCrypto
//
//  Created by Stuart Nguyen on 9/2/20.
//  Copyright © 2020 Nghia Nguyen. All rights reserved.
//

import Foundation

protocol UseCaseProvider {
    func makeCurrenciesTickerUseCase() -> CurrenciesTickerUseCase
}
