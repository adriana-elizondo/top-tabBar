//
//  SampleViewController.swift
//  TopTabBarController
//
//  Created by Adriana Elizondo on 2019/8/20.
//  Copyright © 2019 adriana. All rights reserved.
//

import Foundation
import UIKit

class SampleViewController: UIViewController {
    @IBAction func makebigger(_ sender: Any) {
        (self.parent as? TopTabBarController)?.tabBar?.setHeight(to: 400)
    }
}
