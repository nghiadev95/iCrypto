//
//  PriceChangeOfDay.swift
//  Domain
//
//  Created by Stuart Nguyen on 9/1/20.
//  Copyright © 2020 Nghia Nguyen. All rights reserved.
//

import Foundation

public struct PriceChangeOfDay {
    let value: String
    let percent: String

    public init(value: String, percent: String) {
        self.value = value
        self.percent = percent
    }
}
