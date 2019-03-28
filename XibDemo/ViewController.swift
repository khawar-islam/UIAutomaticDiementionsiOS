//
//  ViewController.swift
//  XibDemo
//
//  Created by hitesh on 27/03/19.
//  Copyright © 2019 hitesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let xib = DemoXib(frame: view.bounds)
        view.addSubview(xib)
    }


}

