//
//  HasLoadingIndicator.swift
//  iCrypto
//
//  Created by Nghia Nguyen on 4/10/20.
//  Copyright © 2020 Nghia Nguyen. All rights reserved.
//

import UIKit

protocol HasLoadingIndicator {
    var loadingViewTag: Int { get }
    func showLoadingIndicator()
    func hideLoadingIndicator()
    func setLoadingVisible(_ visible: Bool)
}

extension HasLoadingIndicator where Self: BaseViewController {
    var loadingViewTag: Int {
        return 1938123987
    }

    func showLoadingIndicator() {
        var loadingView: LoadingView? = view.viewWithTag(loadingViewTag) as? LoadingView
        if loadingView == nil {
            loadingView = LoadingView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        }
        loadingView?.startAnimating()
        loadingView?.tag = loadingViewTag
        view.addSubview(loadingView!)
        loadingView?.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: loadingView!, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: loadingView!, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: loadingView!, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 75),
            NSLayoutConstraint(item: loadingView!, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 75)
        ])
    }

    func hideLoadingIndicator() {
        let loadingView: LoadingView? = view.viewWithTag(loadingViewTag) as? LoadingView
        loadingView?.stopAnimating()
        loadingView?.removeFromSuperview()
    }

    func setLoadingVisible(_ visible: Bool) {
        DispatchQueue.main.async {
            if visible {
                self.showLoadingIndicator()
            } else {
                self.hideLoadingIndicator()
            }
        }
    }
}
