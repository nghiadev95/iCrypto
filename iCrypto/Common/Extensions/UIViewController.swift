//
//  UIViewController.swift
//  iCrypto
//
//  Created by Nghia Nguyen on 4/10/20.
//  Copyright © 2020 Nghia Nguyen. All rights reserved.
//

import SnapKit
import UIKit

extension UIViewController {
    func add(_ child: UIViewController) {
        addChild(child)
        view.addSubview(child.view)
        child.view.snp.makeConstraints { maker in
            maker.edges.equalToSuperview()
        }
        child.didMove(toParent: self)
    }

    func add(_ child: UIViewController, to desView: UIView) {
        addChild(child)
        desView.addSubview(child.view)
        child.view.snp.makeConstraints { maker in
            maker.edges.equalToSuperview()
        }
        child.didMove(toParent: self)
    }

    func remove() {
        guard parent != nil else { return }
        willMove(toParent: nil)
        view.removeFromSuperview()
        removeFromParent()
    }
}
