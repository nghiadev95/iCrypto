//
//  NetworkCurrencyTickerUseCase.swift
//  iCrypto
//
//  Created by Stuart Nguyen on 9/2/20.
//  Copyright © 2020 Nghia Nguyen. All rights reserved.
//

import Alamofire
import Domain
import Foundation
import RequestKits
import RxSwift

struct NetworkCurrencyTickerUseCase: Domain.CurrencyTickerUseCase {
    func getListCurrencyTicker(currencySymbols: [String], completedHandler: @escaping (Result<[CurrencyTicker], Error>) -> Void) {
        Network.defaultInstance()
            .request(requestable: GetListCurrencyTickerRequest(currencySymbols: currencySymbols)) { result in
                completedHandler(result.map { $0.map { $0.asDomain() } })
            }
    }
}
