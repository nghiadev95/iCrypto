//
//  NetworkInitializer.swift
//  iCrypto
//
//  Created by Nghia Nguyen on 5/31/20.
//  Copyright © 2020 Nghia Nguyen. All rights reserved.
//

import RequestKits

class NetworkInitializer: Initializable {
    func performInitialization() {
        RequestManager.instance.updateMaxConcurrentOperationCount(5)
        DownloadManager.instance.updateMaxConcurrentOperationCount(2)
        UploadManager.instance.updateMaxConcurrentOperationCount(2)
    }
}
