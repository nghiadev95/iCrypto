//
//  CurrenciesTickerUseCase.swift
//  Domain
//
//  Created by Stuart Nguyen on 9/1/20.
//  Copyright © 2020 Nghia Nguyen. All rights reserved.
//

import Foundation
import RxSwift

protocol CurrenciesTickerUseCase {
    func getListCurrenciesTicker(currenciesSymbols: [String]) -> Observable<[CurrenciesTicker]>
}
