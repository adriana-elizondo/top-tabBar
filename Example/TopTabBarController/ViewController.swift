//
//  ViewController.swift
//  TopTabBarController
//
//  Created by Adriana Elizondo on 2019/8/20.
//  Copyright © 2019 adriana. All rights reserved.
//

import UIKit

class Item: UIView, TopTabBarContainable {
    @IBOutlet weak var myTitle: UILabel!
    var viewcontroller: UIViewController? = nil
    
    func selectedState() {
        myTitle.text = "I am selected"
    }
    
    func unSelectedState() {
        myTitle.text = "I am not selected"
    }
}

class ViewController: TopTabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let viewController = SampleViewController(nibName: "SampleViewController", bundle: nil)
        if let item = Bundle.main.loadNibNamed("CustomItemView", owner: nil, options: nil)?.first as? Item {
            item.viewcontroller = viewController
            tabBar?.addNewItem(item: item)
        }
        
        let secondviewController = SecondSampleViewController(nibName: "SecondSampleViewController", bundle: nil)
        if let item = Bundle.main.loadNibNamed("AnotherCustomItem", owner: nil, options: nil)?.first as? Item {
            item.viewcontroller = secondviewController
            tabBar?.addNewItem(item: item)
        }
        
        let thirdviewController = SecondSampleViewController(nibName: "SecondSampleViewController", bundle: nil)
        if let item = Bundle.main.loadNibNamed("AnotherCustomItem", owner: nil, options: nil)?.first as? Item {
            item.backgroundColor = UIColor.gray
            item.viewcontroller = thirdviewController
            tabBar?.addNewItem(item: item)
        }
    }
}

