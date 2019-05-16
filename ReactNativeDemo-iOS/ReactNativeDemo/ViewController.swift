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
    var bridge:RCTBridge?
    
    public convenience init(url:URL) {
        self.init()
        self.url = url
    }
    
    func render(){
        guard let u = url else {
            return
        }
        rootView?.removeFromSuperview()
        rootView = nil
        bridge = nil
        let rootView = RCTRootView(bundleURL: u, moduleName: "RNHighScores", initialProperties: ["scores":[["name":"test","value":"sss"] , ]], launchOptions: [:])
        rootView?.frame = view.frame
        bridge = rootView?.bridge
        view.addSubview(rootView!)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        let refreshBtn = UIBarButtonItem(barButtonSystemItem: .refresh, target: self, action: #selector(refresh))
        navigationItem.rightBarButtonItem = refreshBtn
        if (url != nil){
            render()
        }
    }
    
    @objc func refresh(){
        render()
    }


}

