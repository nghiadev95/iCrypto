//
//  LoadingView.swift
//  MovieApp
//
//  Created by Nghia Nguyen on 1/16/20.
//  Copyright © 2020 Nghia Nguyen. All rights reserved.
//

import UIKit

class LoadingView: UIView {
    let activityIndicatorView: UIActivityIndicatorView = {
        if #available(iOS 13, *) {
            return UIActivityIndicatorView(style: .medium)
        } else {
            return UIActivityIndicatorView(style: .gray)
        }
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        viewSettings()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        viewSettings()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = 5
        layer.masksToBounds = true
    }

    func viewSettings() {
        backgroundColor = .white
        addSubview(activityIndicatorView)
        activityIndicatorView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: activityIndicatorView, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: activityIndicatorView, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: activityIndicatorView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 50),
            NSLayoutConstraint(item: activityIndicatorView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 50)
        ])
    }

    func startAnimating() {
        activityIndicatorView.startAnimating()
    }

    func stopAnimating() {
        activityIndicatorView.stopAnimating()
    }
}
