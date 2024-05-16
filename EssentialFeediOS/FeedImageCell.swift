//
//  FeedImageCell.swift
//  EssentialFeediOS
//
//  Created by Andrea Massari on 16/05/24.
//

import UIKit

public class FeedImageCell: UITableViewCell {

    public let locationContainer = UIView()
    public let locationLabel = UILabel()
    public let descriptionLabel = UILabel()
    public let feedImageContainer = UIView()
    public let feedImageView = UIImageView()
    
    var onRetry: (() -> Void)?
    
    private(set) public lazy var feedImageRetryButton: UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(retryButtonTapped), for: .touchUpInside)
        return button
    }()
    
    @objc private func retryButtonTapped() {
        onRetry?()
    }

    
}
