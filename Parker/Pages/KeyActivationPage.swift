//
//  KeyActivationPage.swift
//  Parker
//
//  Created by Slavinsky, Dennis on 1/19/22.
//

import SwiftUI

struct KeyActivationPage: View {
    @Binding var keyActivated: Bool
    
    @State private var username: String = ""
    @State private var checked = false
    
    func canProceed() -> Bool {
        return self.checked && self.username.count > 0
    }
    
    var body: some View {
        VStack(alignment: .center) {
            Text("Welcome to Parker!")
                .font(.system(
                    size: 32,
                    weight: .bold,
                    design: .default
                ))
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(2)
            
            Text("Please provide an activation key")
                .font(.subheadline)
                .fontWeight(.light)
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.center)
            Image("3DShield").resizable().scaledToFit().frame(width: 200, height: 200)
                .padding(30)
            TextField(
                    "app-key-value",
                    text: $username
                )
                .textFieldStyle(ParkerTextFieldStyle())
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
            HStack(alignment: .top) {
                CheckBoxView(checked: $checked)
                    .frame(width: 24, height: 24)
                Text("By checking this box you agree to not disclose any features or data shown on this app")
                    .font(
                        .system(
                            size: 14,
                            weight: .regular,
                            design: .default
                        )
                    )
                    .multilineTextAlignment(.leading)
            }
            .frame(maxWidth: 340)
            .padding(.vertical,  25)
            
            
            Button(action: {
                if canProceed() {
                    withAnimation {
                        print("Hello")
                        keyActivated.toggle()
                    }
                } else {
                    print("Can't proceed")
                }
            }) {
                Text("Activate")
                    .font(.headline)
                    .frame(maxWidth: 290)
            }
            .tint(canProceed() ? .darkPurple : .darkGray)
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
        }
    }
}

struct KeyActivationPage_Previews: PreviewProvider {
    struct KeyActivationPageHolder: View {
        @State var activeKey = false

        var body: some View {
            KeyActivationPage(keyActivated: $activeKey)
        }
    }
    static var previews: some View {
        KeyActivationPageHolder()
    }
}
