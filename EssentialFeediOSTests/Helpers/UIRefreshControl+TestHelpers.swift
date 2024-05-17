//
//  UIRefreshControl+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Andrea Massari on 17/05/24.
//

import UIKit

extension UIRefreshControl {
    @objc func simulatePullToRefresh() {
        simulate(event: .valueChanged)
    }
}
