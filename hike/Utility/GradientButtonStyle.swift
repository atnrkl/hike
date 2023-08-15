//
//  GradientButtonStyle.swift
//  hike
//
//  Created by admin on 15.08.2023.
//

import Foundation
import SwiftUI


struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.vertical)
            .padding(.horizontal,30)
            .background(
                // Conditional Statement
                 
                configuration.isPressed ?
                // A - BUTTON PRESSED
                LinearGradient(colors: [.customGrayLight,.customGrayMedium], startPoint: .bottom, endPoint: .top)
                // B - BUTTON NOT PRESSED
                :
                LinearGradient(colors: [.customGrayLight,.customGrayMedium], startPoint: .top, endPoint: .bottom))
            .cornerRadius(40)
            
    }
}
