////
////  NewsWindowViewController.swift
////  Tinkoff_test
////
////  Created by Григорий Койнаш on 05.02.2023.
////
//
//import UIKit
//
//class NewsWindowViewController: UIViewController {
//    var newsTitle: String?
//    var newsDescription: String?
//    var newsTitlelabel: String?
//
//    let newSview: UIView = {
//        let view = UILabel()
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
//        view.backgroundColor = UIColor.gray
//        return view
//    }()
//
//    private let newsTitleLabel: UILabel = {
//        let label = UILabel()
//        label.font = .systemFont(ofSize: 25, weight: .medium)
//        label.numberOfLines = 0
//        return label
//    }()
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        title = newsTitle
//
//        view.addSubview(newSview)
//        view.addSubview(newsTitleLabel)
//        createNewsViewConstraint()
//    }
////    Constraints for view
//    func createNewsViewConstraint(){
//        NSLayoutConstraint(
//            item: newSview,
//            attribute: .leading,
//            relatedBy: .equal,
//            toItem: view,
//            attribute: .leadingMargin,
//            multiplier: 1,
//            constant: 0).isActive = true
//        NSLayoutConstraint(
//            item: newSview,
//            attribute: .trailingMargin,
//            relatedBy: .equal,
//            toItem: view,
//            attribute: .trailingMargin,
//            multiplier: 1,
//            constant: 0).isActive = true
//        NSLayoutConstraint(
//            item: newSview,
//            attribute: .top,
//            relatedBy: .equal,
//            toItem: view,
//            attribute: .topMargin,
//            multiplier: 1,
//            constant: 70).isActive = true
//        NSLayoutConstraint(
//            item: newSview,
//            attribute: .height,
//            relatedBy: .equal,
//            toItem: view,
//            attribute: .width,
//            multiplier: 1,
//            constant: 0).isActive = true
//
//    }
//
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }
//    */
//
//}
