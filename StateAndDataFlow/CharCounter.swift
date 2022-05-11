

import Foundation
import Combine
import SwiftUI

class CharCounter: ObservableObject {
    let objectWillChange = PassthroughSubject< CharCounter, Never>()
    
     func changeColor(with name: String) -> Color {
        var color: Color
         if (0...2).contains(name.count) {
            color = .red
        } else {
            color = .green
        }
        return color
    }
    
    func activeButton(with name: String) -> Bool {
        var focus: Bool
        if (0...2).contains(name.count) {
            focus = true
        } else {
            focus = false
        }
        return focus
    }
}
