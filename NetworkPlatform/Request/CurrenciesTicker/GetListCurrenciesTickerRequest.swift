//
//  GetListCurrenciesTickerRequest.swift
//  iCrypto
//
//  Created by Stuart Nguyen on 9/2/20.
//  Copyright © 2020 Nghia Nguyen. All rights reserved.
//

import Alamofire
import Foundation
import RequestKits

struct GetListCurrenciesTickerRequest: Requestable {
    var baseURL: URL {
        return Constants.API.baseUrl
    }

    var path: String {
        return "/v1/currencies/ticker"
    }

    var method: HTTPMethod {
        return .get
    }

    var task: Task {
        return .requestParameters(parameters: ["ids": currenciesSymbols.joined(separator: ",")], encoding: URLEncoding.default)
    }

    let currenciesSymbols: [String]
}
