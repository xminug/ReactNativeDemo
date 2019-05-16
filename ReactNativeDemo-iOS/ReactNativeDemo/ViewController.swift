//
//  ViewController.swift
//  ReactNativeDemo
//
//  Created by minug on 2019/5/13.
//  Copyright © 2019 minug. All rights reserved.
//

import UIKit
import React

class ViewController: UIViewController {
    var rootView : RCTRootView?
    var url : URL?
    public convenience init(url:URL) {
        self.init()
        self.url = url
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        let refreshBtn = UIBarButtonItem(barButtonSystemItem: .refresh, target: self, action: #selector(refresh))
        navigationItem.rightBarButtonItem = refreshBtn
        guard let url = Bundle.main.url(forResource: "main", withExtension: "jsbundle") else {
            return
        }
        let rootView = RCTRootView(bundleURL: url, moduleName: "RNHighScores", initialProperties: ["scores":[["name":"123","value":"234"] , ]], launchOptions: [:])
        rootView?.frame = view.frame
        view.addSubview(rootView!)
        
    }
    
    @objc func refresh(){
        
    }


}

