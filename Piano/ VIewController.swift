//
//  Created by Alexa Sih
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer : AVAudioPlayer!
    var selectedSoundFileName : String = ""
    let soundArray = ["piano-a", "piano-b", "piano-bb", "piano-c", "piano-c-2", "piano-d", "piano-e", "piano-eb", "piano-f", "piano-f-2", "piano-g", "piano-g-2"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
    
        selectedSoundFileName = soundArray[sender.tag - 1]
        
        playSound()
        
    }
    
    func playSound() {
        let soundURL = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        audioPlayer.play()
    }
    
  

}

