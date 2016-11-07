//
//  composeViewController.swift
//  TumblrDemo
//
//  Created by Amy Wu on 11/6/16.
//  Copyright © 2016 Amy Wu. All rights reserved.
//

import UIKit

class composeViewController: UIViewController {
    

    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!
    
    var textButtonOriginalCenter: CGFloat!
    var photoButtonOriginalCenter: CGFloat!
    var quoteButtonOriginalCenter: CGFloat!
    var linkButtonOriginalCenter: CGFloat!
    var chatButtonOriginalCenter: CGFloat!
    var videoButtonOriginalCenter: CGFloat!
    
    @IBOutlet weak var nevermindButton: UIButton!
    
    

    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //set the initial positions of the compose buttons to below the screen
    
        textButtonOriginalCenter = textButton.frame.origin.y
        photoButtonOriginalCenter =  photoButton.frame.origin.y
        quoteButtonOriginalCenter = quoteButton.frame.origin.y
        linkButtonOriginalCenter = linkButton.frame.origin.y
        chatButtonOriginalCenter = chatButton.frame.origin.y
        videoButtonOriginalCenter = videoButton.frame.origin.y
        
        self.textButton.frame.origin.y = self.textButtonOriginalCenter + 667
        self.photoButton.frame.origin.y = self.photoButtonOriginalCenter + 667
        self.linkButton.frame.origin.y = self.linkButtonOriginalCenter + 667
        self.quoteButton.frame.origin.y = self.quoteButtonOriginalCenter + 667
        self.chatButton.frame.origin.y = self.chatButtonOriginalCenter + 667
        self.videoButton.frame.origin.y = self.videoButtonOriginalCenter + 667
        
        print("Yay, the compose icons are hiding")
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //schedule the animations of the compose buttons
        
        UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveEaseInOut, animations: {
            self.textButton.frame.origin.y = self.textButtonOriginalCenter
            
        })
        
        UIView.animate(withDuration: 0.5, delay: 0.2, options: .curveEaseInOut, animations: {
            self.photoButton.frame.origin.y = self.photoButtonOriginalCenter
            
        })
        
        UIView.animate(withDuration: 0.5, delay: 0.3, options: .curveEaseInOut, animations: {
            self.linkButton.frame.origin.y = self.linkButtonOriginalCenter
            
        })
        
        UIView.animate(withDuration: 0.5, delay: 0.4, options: .curveEaseInOut, animations: {
            self.quoteButton.frame.origin.y = self.quoteButtonOriginalCenter
            
        })
        
        UIView.animate(withDuration: 0.5, delay: 0.5, options: .curveEaseInOut, animations: {
            self.chatButton.frame.origin.y = self.chatButtonOriginalCenter
            
        })
        
        UIView.animate(withDuration: 0.5, delay: 0.6, options: .curveEaseInOut, animations: {
            self.videoButton.frame.origin.y = self.videoButtonOriginalCenter
            
        })
        
        
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
  
    }
    

    
    @IBAction func onDismissButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        

    }
    

}
