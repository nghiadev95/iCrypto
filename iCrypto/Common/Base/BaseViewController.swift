//
//  BaseViewController.swift
//  iCrypto
//
//  Created by Nghia Nguyen on 4/10/20.
//  Copyright © 2020 Nghia Nguyen. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController, ErrorShowable, HasLoadingIndicator {
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    deinit {
        Log.info("\(self.className) deinit got called!")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let viewController = self as? NavigationBarVisible {
            viewController.updateNavigationBarVisible()
        }
    }
}
