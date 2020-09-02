//
//  NetworkCurrenciesTickerUseCase.swift
//  iCrypto
//
//  Created by Stuart Nguyen on 9/2/20.
//  Copyright © 2020 Nghia Nguyen. All rights reserved.
//

import Alamofire
import Foundation
import RequestKits
import RxSwift

struct NetworkCurrenciesTickerUseCase: CurrenciesTickerUseCase {
    func getListCurrenciesTicker(currenciesSymbols: [String]) -> Observable<[CurrenciesTicker]> {
        let request: Observable<[CurrenciesTickerEntity]> = Network.defaultInstance().rxRequest(requestable: GetListCurrenciesTickerRequest(currenciesSymbols: currenciesSymbols))
        return request.map { $0.map { $0.asDomain() }}
    }
}
