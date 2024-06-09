//
//  UITableView+Dequeuing.swift
//  EssentialFeediOS
//
//  Created by Andrea Massari on 04/06/24.
//

import UIKit

extension UITableView {
    func dequeueReusableCell<T: UITableViewCell>() -> T {
        let identifier = String(describing: T.self)
        return dequeueReusableCell(withIdentifier: identifier) as! T
    }
}
