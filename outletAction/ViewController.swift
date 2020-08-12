//
//  ViewController.swift
//  outletAction
//
//  Created by Bernice TSAI on 2020/8/11.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var entryText: UITextField! 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func littleMouse(_ sender: Any) {
        let speechUtterance = AVSpeechUtterance(string:entryText.text!)
        speechUtterance.rate = 0.4
        speechUtterance.pitchMultiplier = 1.5
        speechUtterance.voice = AVSpeechSynthesisVoice(language:"zh-TW")
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(speechUtterance)
    }
    
}

