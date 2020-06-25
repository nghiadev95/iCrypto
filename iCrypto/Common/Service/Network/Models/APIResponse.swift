//
//  APIResponse.swift
//  iCrypto
//
//  Created by Nghia Nguyen on 5/31/20.
//  Copyright © 2020 Nghia Nguyen. All rights reserved.
//

import Foundation

struct APIResponse<D: Codable>: Codable {
    var result: D?
}
