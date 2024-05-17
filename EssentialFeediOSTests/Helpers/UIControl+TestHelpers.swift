//
//  UIControl+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Andrea Massari on 17/05/24.
//

import UIKit

extension UIControl {
    func simulate(event: UIControl.Event) {
        allTargets.forEach { target in
            actions(forTarget: target, forControlEvent: event)?.forEach {
                (target as NSObject).perform(Selector($0))
            }
        }
    }
}
