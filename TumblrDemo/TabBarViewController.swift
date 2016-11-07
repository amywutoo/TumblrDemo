//
//  TabBarViewController.swift
//  TumblrDemo
//
//  Created by Amy Wu on 11/5/16.
//  Copyright © 2016 Amy Wu. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet var buttons: [UIButton]!
    
    var HomeViewController: UIViewController!
    var searchViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    
    var selectedIndex: Int = 0
    
    @IBOutlet var viewControllers: [UIViewController]!
    
    @IBAction func didPressTab(_ sender: UIButton) {
        
        let previousIndex = selectedIndex
        selectedIndex = sender.tag
        
        buttons[previousIndex].isSelected = false
        let previousVC = viewControllers[previousIndex]
        
        previousVC.willMove(toParentViewController: nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        sender.isSelected = true
        let vc = viewControllers[selectedIndex]
        addChildViewController(vc)
        
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        
        vc.didMove(toParentViewController: self)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        HomeViewController = storyboard.instantiateViewController(withIdentifier: "HomeViewController")
        searchViewController = storyboard.instantiateViewController(withIdentifier: "searchViewController")
        accountViewController = storyboard.instantiateViewController(withIdentifier: "accountViewController")
        trendingViewController = storyboard.instantiateViewController(withIdentifier: "trendingViewController")
        
        viewControllers = [HomeViewController, searchViewController, accountViewController, trendingViewController]
        
        buttons[selectedIndex].isSelected = true
        didPressTab(buttons[selectedIndex])
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    

}
