//
//  ErrorShowable.swift
//  iCrypto
//
//  Created by Nguyen Nghia on 8/31/20.
//  Copyright © 2020 Nghia Nguyen. All rights reserved.
//

import UIKit
import DevelopKits
import SwifterSwift

protocol ErrorShowable {
    func showErrorPopup(message: String)
    func showToast(message: String)
}

extension ErrorShowable where Self: BaseViewController {
    func showErrorPopup(message: String) {
        showAlert(title: "Something went wrong!!!", message: message)
    }

    func showToast(message: String) {
        showToast(message: message, font: .systemFont(ofSize: 12), toastColor: .white, toastBackground: .black)
    }
}
