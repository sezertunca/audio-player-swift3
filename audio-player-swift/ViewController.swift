//
//  ViewController.swift
//  audio-player-swift
//
//  Created by Sezer Tunca on 26/04/2017.
//  Copyright © 2017 Sezer Tunca. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var soundPlayer: AVAudioPlayer!
    let soundURL = Bundle.main.url(forResource: "ding", withExtension: "wav")
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        do
        {
            soundPlayer = try AVAudioPlayer(contentsOf: soundURL!)
            soundPlayer.prepareToPlay()
        }
        catch
        {
            
        }
    }

    @IBAction func playSound(_ sender: UIButton)
    {
        soundPlayer.play()
    }
}
