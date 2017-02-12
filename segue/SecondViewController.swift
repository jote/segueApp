//
//  SecondViewController.swift
//  segue
//
//  Created by jote on 2017/02/11.
//  Copyright © 2017年 jote. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    var _name:String?
    var name: String {
        get {
            return self._name!
        }
        set {
            self._name = newValue
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        if _name != nil {
            label.text = _name
        } else {
            label.text = "名前がきていません"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
