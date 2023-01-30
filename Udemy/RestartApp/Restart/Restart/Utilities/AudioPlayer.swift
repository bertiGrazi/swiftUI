//
//  AudioPlayer.swift
//  Restart
//
//  Created by Grazielli Berti on 30/01/23.
//

import Foundation
// We can easily play, create, and edit movies, sound files and build poweful media functionality into any apps using this framework
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Could not play the sound file")
        }
    }
}
