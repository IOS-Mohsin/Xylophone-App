//
//  ViewController.swift
//  Xylophone App
//
//  Created by See Sight Tours on 18/04/2024.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func keyPressed(_ sender: UIButton) 
    {
        playSound(soundName: sender.currentTitle!)
        
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")!
            player = try! AVAudioPlayer(contentsOf: url)
            player!.play()
        }
    }
    

