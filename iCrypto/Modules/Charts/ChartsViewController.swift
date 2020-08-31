//
//  ChartsViewController.swift
//  iCrypto
//
//  Created by Nghia Nguyen on 6/25/20.
//  Copyright (c) 2020 Nghia Nguyen. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit
import RequestKits
import SwifterSwift
import DevelopKits

final class ChartsViewController: UIViewController {
    @IBOutlet weak var myAccountInfoView: UIView!
    @IBOutlet weak var myAccountShadowView: UIView!

    // MARK: - Public properties -

    let network = Network(config: NetworkConfig(requestAdapters: [AuthenticationAdapter(authentication: .custom(name: "X-CoinAPI-Key", token: "FC504204-B84F-40FB-B390-4ECFBDB0910B"))]))

    var presenter: ChartsPresenterInterface!

    // MARK: - Lifecycle -

    override func viewDidLoad() {
        super.viewDidLoad()

        myAccountInfoView.roundCorners([.bottomLeft, .bottomRight], radius: 10)
        myAccountShadowView.layer.applySketchShadow(color: .red, alpha: 0.5, xValue: 0, yValue: -2, blur: 20, spread: 0)
    }

}

// MARK: - Extensions -

extension ChartsViewController: ChartsViewInterface {

}

