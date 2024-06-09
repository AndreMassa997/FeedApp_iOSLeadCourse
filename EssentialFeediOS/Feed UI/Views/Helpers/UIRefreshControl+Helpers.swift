//
//  UIRefreshControl+Helpers.swift
//  EssentialFeediOS
//
//  Created by Andrea Massari on 09/06/24.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
