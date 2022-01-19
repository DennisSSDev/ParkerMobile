//
//  AccessPage.swift
//  Parker
//
//  Created by Slavinsky, Dennis on 1/19/22.
//

import SwiftUI

struct AccessPage: View {
    @Binding var pressedProceed: Bool
    
    var body: some View {
        VStack(alignment: .center) {
            Text("Congratulations!")
                .font(.system(
                    size: 32,
                    weight: .bold,
                    design: .default
                ))
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(2)

            Image("3DShield").resizable().scaledToFit().frame(width: 200, height: 200)
                .padding(30)
            
            Text("Key Activated!")
                .font(.system(
                    size: 32,
                    weight: .bold,
                    design: .default
                ))
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(2)
            
            Text("You now have access to Parker! Press 'Continue' to begin using the app")
                .font(.subheadline)
                .fontWeight(.light)
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.center)
        
            Button(action: {
                withAnimation {
                    print("Hello")
                    pressedProceed.toggle()
                }
            }) {
                Text("Continue")
                    .font(.headline)
                    .frame(maxWidth: 290)
            }
            .tint(.darkPurple)
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
        }
    }
}

struct AccessPage_Previews: PreviewProvider {
    struct AccessPageHolder: View {
        @State var pressedContinue = false

        var body: some View {
            AccessPage(pressedProceed: $pressedContinue)
        }
    }
    static var previews: some View {
        AccessPageHolder()
    }
}
