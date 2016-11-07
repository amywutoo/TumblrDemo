//
//  trendingViewController.swift
//  TumblrDemo
//
//  Created by Amy Wu on 11/6/16.
//  Copyright © 2016 Amy Wu. All rights reserved.
//

import UIKit

class trendingViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = imageView.frame.size
        
    
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
}
