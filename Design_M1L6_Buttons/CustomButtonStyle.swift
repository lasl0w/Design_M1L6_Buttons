//
//  CustomButtonStyle.swift
//  Design_M1L6_Buttons
//
//  Created by tom montgomery on 9/15/23.
//

import Foundation
import SwiftUI

struct CustomButtonStyle: ButtonStyle {
    // 1)  impplement a makeBody
    
    // easier than textField style because it's exposed to devs (has a stubbed intellisense)
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            Capsule()
                .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                .frame(height: 44)
            //Text("Label Button")
            configuration.label
                .foregroundColor(.white)
        }
        .shadow(radius: 5)
        // have to implement the pressed effect - inline IF statement
        .opacity(configuration.isPressed ? 0.5 : 1)
        .scaleEffect(configuration.isPressed ? 0.96 : 1)
    }
    
}
