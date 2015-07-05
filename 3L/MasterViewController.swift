
//
//  MasterViewController.swift
//  3L
//
//  Created by Diego Ardila on 7/5/15.
//  Copyright (c) 2015 Common Sensing. All rights reserved.
//

import Foundation
import UIKit


class MasterViewController: UIViewController{
    override func prefersStatusBarHidden() -> Bool {
        self.navigationController!.navigationBarHidden = true;
        return true;
    }
}