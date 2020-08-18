//
//  ViewController.swift
//  UIScrollView
//
//  Created by Volodymyr Ostapyshyn on 17.08.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    var myScrollView = UIScrollView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scrollViewRect = view.bounds
        
        myScrollView = UIScrollView(frame: scrollViewRect)
        myScrollView.isPagingEnabled = true
        myScrollView.contentSize = CGSize(width: scrollViewRect.size.width * 3, height: scrollViewRect.size.height)
        myScrollView.delegate = self
        view.addSubview(myScrollView)

        let images = ["iphone", "ipad", "macbook"]
        for imageName in images {
            addNewImageView(imageName: imageName)
        }
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("Start Scroll", scrollView.contentOffset.y)
        myScrollView.alpha = 0.5
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        print("After scroll")
        myScrollView.alpha = 1
    }
    
    func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
        myScrollView.alpha = 1
    }

    func addNewImageView(imageName: String) {
        var imageViewRect = view.bounds
        let image = UIImage(named: imageName)
        
        imageViewRect.origin.x = imageViewRect.size.width * CGFloat(myScrollView.subviews.count)
        // Swift 4 c нуля: UIKit урок 17 - UIScrollView & Bonus
        let imageView = newImageViewWithImage(paramImage: image!, paramFrame: imageViewRect)
        
        myScrollView.addSubview(imageView)
    }
    
    func newImageViewWithImage(paramImage: UIImage, paramFrame: CGRect) -> UIImageView {
        let result = UIImageView(frame: paramFrame)
        
        result.contentMode = .scaleAspectFit
        result.image = paramImage
        
        return result
    }
}

