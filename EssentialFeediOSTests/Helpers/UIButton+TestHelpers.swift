//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Andrea Massari on 17/05/24.
//

import UIKit

extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}
