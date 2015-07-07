//
//  DetailViewController.swift
//  3L
//
//  Created by Diego Ardila on 7/5/15.
//  Copyright (c) 2015 Common Sensing. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class DetailViewController: UIViewController {
    
    var song: Song?

    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationController!.navigationBarHidden = false;
        let avPlayerViewController = self.childViewControllers.first as! AVPlayerViewController
        dispatch_async(dispatch_get_main_queue()) {
            let player = AVPlayer(URL: NSURL(fileURLWithPath: self.song!.filename!))
            avPlayerViewController.player = player
        }
        textView.text = song!.story!
//        textView.font = UIFont(name: textView.font.fontName, size: 18)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

