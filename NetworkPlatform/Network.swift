//
//  Network+Extension.swift
//  iCrypto
//
//  Created by Stuart Nguyen on 9/2/20.
//  Copyright © 2020 Nghia Nguyen. All rights reserved.
//

import Alamofire
import RequestKits

extension Network {
    static func defaultInstance() -> Network {
        Network(config:
            NetworkConfig(
                requestAdapters: [ParamKeyAdapter(keyName: "key", keyValue: Constants.API.apiKey)],
                requestRetrier: [RetryPolicy()]
            )
        )
    }
}
