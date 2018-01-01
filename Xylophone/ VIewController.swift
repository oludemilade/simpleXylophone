//
//  ViewController.swift
//  Xylophone
//
//  Created by Oludemilade Raji on 01/01/2018.
//  Copyright © 2018
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var soundPlayer: AVAudioPlayer!
    let soundFile : [String] = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        print (sender.tag)
        playSound(note: soundFile[sender.tag - 1])
    
    }
    
    func playSound(note : String)
    {
        let soundURL = Bundle.main.url(forResource: note, withExtension: "wav")
        
        do{
            soundPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        soundPlayer.play()
    }
}

