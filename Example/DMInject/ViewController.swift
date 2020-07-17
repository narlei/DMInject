//
//  ViewController.swift
//  DMInject
//
//  Created by Narlei Moreira on 07/17/2020.
//  Copyright (c) 2020 Narlei Moreira. All rights reserved.
//

import DMInject
import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Exemple 1: Easy way
        var myclass: MyClassProtocol?
        myclass << DMInject()
        if let name = myclass?.getName() {
            print(name)
        }
        
        
        // Exemple 1: Declarative way
        let myClass2 = DMInject.main.getInstance(interface: MyClassProtocol.self)
        if let name = myClass2?.getName() {
            print(name)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
