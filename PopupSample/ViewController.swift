//
//  ViewController.swift
//  PopupSample
//
//  Created by Morita Jun on 2018/01/05.
//  Copyright © 2018年 kamuiproject. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - LifeCycle Method

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Action

    @IBAction func didTapButton() {
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "PopupViewController") else { return }
        self.present(vc, animated: false, completion: nil)
    }

}

