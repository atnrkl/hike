//
//  CustomBackgroundView.swift
//  hike
//
//  Created by admin on 14.08.2023.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            
            // DEPTH
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y:12)
            
            // LIGHT
            Color.customGreenLight
                .cornerRadius(40)
                .offset(y:3)
                .opacity(0.85)
            
            //SURFACE
            
            
            
            LinearGradient(colors: [
                Color.customGreenLight,
                Color.customGreenMedium
            ], startPoint: .top, endPoint: .bottom)
            .cornerRadius(40)
        }
        
        
    }
}

struct CustomBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        CustomBackgroundView()
            .padding()
    }
}
