//
//  PopupViewController.swift
//  PopupSample
//
//  Created by Morita Jun on 2018/01/05.
//  Copyright © 2018年 kamuiproject. All rights reserved.
//

import UIKit

class PopupViewController: UIViewController {

    @IBOutlet private weak var characterView: UIImageView!
    @IBOutlet private weak var descriptionView: UIView!
    @IBOutlet private weak var baseView: UIView!
    @IBOutlet private weak var baseViewWidthConstraint: NSLayoutConstraint!
    @IBOutlet private weak var baseViewHeightConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.characterView.layer.cornerRadius = 45
        self.descriptionView.layer.cornerRadius = 10
        
        self.baseViewWidthConstraint.constant = 0
        self.baseViewHeightConstraint.constant = 0
        self.view.layoutIfNeeded()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.baseViewWidthConstraint.constant = 250
        self.baseViewHeightConstraint.constant = 250

        UIView.animate(withDuration: 1.2, delay: 0.3, usingSpringWithDamping: 0.6, initialSpringVelocity: 10, options: .curveEaseOut, animations: { () -> Void in
            
            self.baseView.alpha = 1.0
            self.view.layoutIfNeeded()
            
        }, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Action
    
    @IBAction func didTapCloseButton() {
        
        UIView.animate(withDuration: 0.5, animations: { () -> Void in
            self.view.alpha = 0.0
        }, completion: { isFinished -> Void in
            if isFinished {
                self.dismiss(animated: true, completion: nil)
            }
        })
    }

}
