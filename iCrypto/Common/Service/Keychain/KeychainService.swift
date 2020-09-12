//
//  KeychainService.swift
//  iCrypto
//
//  Created by Stuart Nguyen on 9/12/20.
//  Copyright © 2020 Nghia Nguyen. All rights reserved.
//

import Foundation
import KeychainAccess

class KeychainService {
    static let shared = KeychainService()
    private static let tokenService = "token.information"

    @KeychainString(serviceName: tokenService, key: "accessToken")
    var accessToken: String?

    @KeychainString(serviceName: tokenService, key: "refreshToken")
    var refreshToken: String?

    func removeAll() {
        accessToken = nil
        refreshToken = nil
    }
}
