//
//  CharCounter.swift
//  StateAndDataFlow
//
//  Created by Macbook on 11.05.2022.
//

import Foundation
import Combine
import SwiftUI

class CharCounter: ObservableObject {
    let objectWillChange = PassthroughSubject< CharCounter, Never>()
    
     func changeColor(with name: String) -> Color {
        var color: Color
        if name.count <= 3 {
            color = .red
        } else {
            color = .green
        }
        return color
    }
    
    func activeButton(with name: String) -> Bool {
        var focus: Bool
        if (0...3).contains(name.count) {
            focus = true
        } else {
            focus = false
        }
        return focus
    }
}