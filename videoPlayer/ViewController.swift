//
//  ViewController.swift
//  videoPlayer
//
//  Created by ZACH MAC on 2023/10/25.
//

import UIKit
import AVKit

class ViewController: UIViewController {
    //(1) create av View for AVPlayerViewController
    @IBOutlet weak var avView: UIView!
    
    //(2) declare a AVPlayerViewController
    var  vc : AVPlayerViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func pause(_ sender: Any) {
        vc.player!.pause()
    }
    @IBAction func play(_ sender: Any) {
        vc.player!.play()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        //(3)
        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "IMG_0063", ofType: "MOV")!))
        
        vc = AVPlayerViewController()
        vc.player = player
        vc.showsPlaybackControls = true
        
        //(4)
        vc.view.frame = avView.bounds
        avView.addSubview(vc.view)
    }
}

