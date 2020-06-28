//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.

//  Customised by Jeffrey Wolf in 2020.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        
        playSound(soundName: sender.currentTitle!)
        
        //Reduces the button's opacity in half
        sender.alpha = 0.5
        
        //Delay code execution by 0.2 seconds
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            
        //Return to button's normal opacity (full)
        sender.alpha = 1.0
         
            
        }
        
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }
}



