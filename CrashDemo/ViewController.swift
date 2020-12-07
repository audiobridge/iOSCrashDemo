//
//  ViewController.swift
//  CrashDemo
//
//  Created by Peter Robert on 07/12/2020.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func createEffects(_ sender: UIButton) {
        
        //1. EQ
        let eqEffect = AVAudioUnitEQ(numberOfBands: 3)

        //Low
        let lowFilterParams = eqEffect.bands[0]
        lowFilterParams.filterType = AVAudioUnitEQFilterType.lowShelf
        lowFilterParams.frequency = 250.0
        lowFilterParams.bandwidth = 4.0
        lowFilterParams.gain = 0.0
        lowFilterParams.bypass = false

        //Mid
        let medFilterParams = eqEffect.bands[1]
        medFilterParams.filterType = AVAudioUnitEQFilterType.parametric
        medFilterParams.frequency = 1_000.0
        medFilterParams.bandwidth = 4.0
        medFilterParams.gain = 0.0
        medFilterParams.bypass = false

        //High
        let highFilterParams = eqEffect.bands[2]
        highFilterParams.filterType = AVAudioUnitEQFilterType.highShelf
        highFilterParams.frequency = 4_000.0
        highFilterParams.bandwidth = 4.0
        highFilterParams.gain = 0.0
        highFilterParams.bypass = false
        
        //2. DELAY
        let delayEffect = AVAudioUnitDelay()
        delayEffect.delayTime = 0.5
        delayEffect.wetDryMix = 100.0
        delayEffect.feedback = 50

//        //3. REVERB
//        let reverb = AVAudioUnitReverb()
//        reverb.wetDryMix = 50.0
//        reverb.loadFactoryPreset(AVAudioUnitReverbPreset.cathedral)
    }
}

