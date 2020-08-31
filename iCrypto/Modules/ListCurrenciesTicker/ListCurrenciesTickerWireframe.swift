//
//  ListCurrenciesTickerWireframe.swift
//  iCrypto
//
//  Created by Nguyen Nghia on 8/31/20.
//  Copyright (c) 2020 Nghia Nguyen. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

final class ListCurrenciesTickerWireframe: BaseWireframe {

    // MARK: - Private properties -

    private let storyboard = UIStoryboard(name: "ListCurrenciesTicker", bundle: nil)

    // MARK: - Module setup -

    init() {
        let moduleViewController = storyboard.instantiateViewController(ofType: ListCurrenciesTickerViewController.self)
        super.init(viewController: moduleViewController)

        let interactor = ListCurrenciesTickerInteractor()
        let presenter = ListCurrenciesTickerPresenter(view: moduleViewController, interactor: interactor, wireframe: self)
        moduleViewController.presenter = presenter
    }

}

// MARK: - Extensions -

extension ListCurrenciesTickerWireframe: ListCurrenciesTickerWireframeInterface {
    func navigate(to option: WalletsNavigationOption) {

    }
}
