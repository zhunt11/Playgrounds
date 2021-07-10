
import Foundation
import AudioToolbox

class TextFieldManager: ObservableObject {
    let characterLimit = 4
    @Published var userInput = "" {
        didSet {
            if userInput.count > characterLimit {
                userInput = String(userInput.prefix(characterLimit))
                AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)) { return }
            }
        }
    }
}
