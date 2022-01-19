//
//  Styles.swift
//  Parker
//
//  Created by Slavinsky, Dennis on 1/19/22.
//

import SwiftUI

extension Color {
    static let lightGray = Color(red: 228 / 255, green: 228 / 255, blue: 231 / 255)
    static let darkPurple = Color(red: 113 / 255, green: 101 / 255, blue: 227 / 255)
    static let darkGray = Color(red: 158 / 255, green: 166 / 255, blue: 190 / 255)
}

struct ParkerTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .frame(maxWidth: 300).padding(16)
        .background(
            RoundedRectangle(cornerRadius: 10).fill(Color.lightGray)
        )
        .foregroundColor(.black
        )
        .disableAutocorrection(true)
        .textInputAutocapitalization(.never)
    }
}
