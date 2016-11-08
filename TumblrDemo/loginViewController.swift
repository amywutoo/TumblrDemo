//
//  loginViewController.swift
//  TumblrDemo
//
//  Created by Amy Wu on 11/7/16.
//  Copyright © 2016 Amy Wu. All rights reserved.
//

import UIKit

class loginViewController: UIViewController {

    @IBOutlet weak var modalParent: UIView!
    
    
    var initialY: CGFloat!
    var offset: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialY = modalParent.frame.origin.y
        offset = 0
        
        NotificationCenter.default.addObserver(forName: Notification.Name.UIKeyboardWillShow, object: nil, queue: OperationQueue.main) { (notification: Notification) in
            // Any code you put in here will be called when the keyboard is about to display
            
            self.modalParent.frame.origin.y = self.initialY + self.offset
        }
        
        NotificationCenter.default.addObserver(forName: Notification.Name.UIKeyboardWillHide, object: nil, queue: OperationQueue.main) { (notification: Notification) in
            // Any code you put in here will be called when the keyboard is about to hide
            self.modalParent.frame.origin.y = self.initialY

        }

        // Do any additional setup after loading the view.
    }
    @IBAction func didTap(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
