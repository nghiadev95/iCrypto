//
//  ThemeInitializer.swift
//  iCrypto
//
//  Created by Nguyen Nghia on 8/29/20.
//  Copyright © 2020 Nghia Nguyen. All rights reserved.
//

import SwiftRichString
import UIKit

class ThemeInitializer: Initializable {
    func performInitialization() {
        Styles.register(StyleNames.buttonText, style: Style {
            $0.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        })

        Styles.register(StyleNames.normalText, style: Style {
            $0.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        })

        Styles.register(StyleNames.descriptionText, style: Style {
            $0.font = UIFont.systemFont(ofSize: 10, weight: .regular)
        })

        Styles.register(StyleNames.pageTitleText, style: Style {
            $0.font = UIFont.systemFont(ofSize: 30, weight: .regular)
        })
    }
}
