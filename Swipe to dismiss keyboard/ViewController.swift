//
//  ViewController.swift
//  Swipe to dismiss keyboard
//
//  Created by Eduardo Prats on 2/4/16.
//  Copyright © 2016 edprats. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Gesture Keyboard"
        self.automaticallyAdjustsScrollViewInsets = false
        textView.becomeFirstResponder()
        textView.keyboardAppearance = .Dark
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Done", style: .Done, target: self, action: "dismissKeyboard")
        
        var swipeDown = UISwipeGestureRecognizer(target: self, action: "dismissKeyboard")
        swipeDown.direction = .Down
        
        view.addGestureRecognizer(swipeDown)
    }

    func dismissKeyboard() {
        textView.resignFirstResponder()
    }
}

