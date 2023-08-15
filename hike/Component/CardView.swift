//
//  CardView.swift
//  hike
//
//  Created by admin on 14.08.2023.
//

import SwiftUI

struct CardView: View {
    
    // MARK - PROPERTIES
    
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    @State private var isShowingSheet: Bool = false
    
    
    // MARK - FUNCTIONS
    
    func randomImage() {
        
        randomNumber = Int.random(in: 1...5)
        if (randomNumber == imageNumber){
            randomNumber = Int.random(in: 1...5)
        }
        imageNumber = randomNumber
    }
    
    
    var body: some View {
        ZStack {
            CustomBackgroundView()
            VStack {
                // MARK - HEADER
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(LinearGradient(
                                colors: [
                                    .customGrayLight,
                                    .customGrayMedium
                                ], startPoint: .top, endPoint: .bottom))
                        
                        Spacer()
                        Button{
                            // ACTION - SHOW A SHEET
                            isShowingSheet.toggle()
                            print("button was pressed")
                        } label: {
                            CustomButtonView()
                        }.sheet(isPresented: $isShowingSheet){
                            SettingsView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.medium,.large])
                        }
                        
                    }
                    
                    
                    
                    Text("Fun and Enjoyable outdoor activitiy with your friends")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }
                .padding(.horizontal,30)
                // MARK - MAIN CONTENT
                ZStack {
                    CustomCircleView()
                    
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.default, value: imageNumber)
                }
                 
                
                Button {
                    print("this button was pressed")
                    randomImage()
                } label: {
                    Text("Explore more")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(LinearGradient(colors: [.customGreenLight,.customGreenMedium], startPoint: .top, endPoint: .bottom))
                        .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
                } //: BUTTON
                .buttonStyle(GradientButton())
                
                
                
                
                
                
            } // : ZSTACK
        } //: CARD
        .frame( width: 320, height: 570)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
