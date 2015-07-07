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


//Takes a song object and then displays it's properties: 
//title via the label in the navigation bar
//cover art via an imageview
//sound via an AVPlayer
//and the story via a textview
class DetailViewController: UIViewController {
    
    var song: Song?
    var avPlayerViewController: AVPlayerViewController?

    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationController!.navigationBarHidden = false;
        self.title = song!.title!
        avPlayerViewController = self.childViewControllers.first as? AVPlayerViewController
        dispatch_async(dispatch_get_main_queue()) {
            let path = NSBundle.mainBundle().pathForResource(self.song!.filename!, ofType: "mp3")!
            
            let player = AVPlayer(URL: NSURL(fileURLWithPath: path))
            
            self.avPlayerViewController!.player = player
        }
        textView.text = song!.story!
        self.navigationController!.navigationBar.tintColor = UIColor.whiteColor()
    }
    override func viewDidAppear(animated: Bool) {
        avPlayerViewController!.player.play()
    }

    override func prefersStatusBarHidden() -> Bool {
        return true
    }


}

