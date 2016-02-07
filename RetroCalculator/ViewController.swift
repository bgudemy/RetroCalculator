//
//  ViewController.swift
//  RetroCalculator
//
//  Created by Brian J Glowe on 2/5/16.
//  Copyright © 2016 BG. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var outputLbl: UILabel!
    
    var btnSound: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // first tell the app where the file is located
        let path = NSBundle.mainBundle().pathForResource("btn", ofType: "wav")
        let soundURL = NSURL(fileURLWithPath: path!)
        
        do {
            try btnSound = AVAudioPlayer(contentsOfURL: soundURL)
            btnSound.prepareToPlay()
        } catch let error as NSError {
            print(error.debugDescription)
        }
        
    }

    @IBAction func numberPressed(btn: UIButton!) {
        btnSound.play()
        
    }

}

