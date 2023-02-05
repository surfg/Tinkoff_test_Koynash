//
//  NewsWindowViewController.swift
//  Tinkoff_test
//
//  Created by Григорий Койнаш on 05.02.2023.
//

import UIKit

class NewsViewModel {
    let title: String
    let subtitle: String
    let imageURL: URL?
    var imageData: Data? = nil
    
    init(title: String, subtitle: String, imageURL: URL?) {
        self.title = title
        self.subtitle = subtitle
        self.imageURL = imageURL
    }
}

class NewsWindowViewController: UIViewController {
    static let identifier = "NewsTableViewCell"
    
    private let newsTitleLabel: UILabel = {
            let label = UILabel()
            label.font = .systemFont(ofSize: 25, weight: .medium)
            label.numberOfLines = 0
            return label
        }()

        private let subtitleLabel: UILabel = {
            let label = UILabel()
            label.font = .systemFont(ofSize: 18, weight: .regular)
            label.numberOfLines = 0
            return label
        }()

        private let newsImageView: UIImageView = {
           let imageView = UIImageView()
            imageView.clipsToBounds = true
            imageView.backgroundColor = .white
            imageView.contentMode = .scaleAspectFit
            return imageView
        }()

        override func viewDidLoad() {
            super.viewDidLoad()
            view.addSubview(newsImageView)
            view.addSubview(subtitleLabel)
            view.addSubview(newsTitleLabel)
        }

        override func viewDidLayoutSubviews() {
            super.viewDidLayoutSubviews()
            newsTitleLabel.frame = CGRect(x: 10, y: view.frame.size.height/2, width: view.frame.size.width - 10, height: 70)
            subtitleLabel.frame = CGRect(x: 10, y: view.frame.size.height/2 + 70, width: view.frame.size.width - 10, height: view.frame.size.height/2 - 80)
            newsImageView.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height/2)
        }
    
    
    func configure2(with viewModel: NewsTableViewCellViewViewModel) {

        newsTitleLabel.text = viewModel.title
        subtitleLabel.text = viewModel.subtitle
        
        if let data = viewModel.imageData {
            newsImageView.image = UIImage(data: data)
        } else if let url = viewModel.imageURL {
            URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
                guard let data = data, error == nil else {
                    return
                }
                viewModel.imageData = data
                DispatchQueue.main.async {
                    self?.newsImageView.image = UIImage(data: data)
                }
            }.resume()
        }
        
    }
    
    
}
    
    
