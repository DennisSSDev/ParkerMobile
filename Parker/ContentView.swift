//
//  ContentView.swift
//  Parker
//
//  Created by Slavinsky, Dennis on 1/19/22.
//

import SwiftUI

extension AnyTransition {
    static var backslide: AnyTransition {
        AnyTransition.asymmetric(
            insertion: .move(edge: .trailing),
            removal: .move(edge: .leading))}
}

struct ContentView: View {
    @State var activeKey = false
    @State var pressedContinue = false
    var body: some View {
        if activeKey {
            AccessPage(pressedProceed: $pressedContinue)
                .transition(
                    .backslide.animation(
                        .easeInOut(
                            duration: 100
                        )
                    )
                )
        } else {
            KeyActivationPage(keyActivated: $activeKey)
                .transition(
                    .backslide.animation(
                        .easeInOut(
                            duration: 100
                        )
                    )
                )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
