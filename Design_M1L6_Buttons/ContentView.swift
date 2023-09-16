//
//  ContentView.swift
//  Design_M1L1_Buttons
//
//  Created by tom montgomery on 9/14/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            // TEXT (Basic) Button
            Button("Text Button") {
                print("this is a text button")
            }
            
            // LABEL Button - the whole ZStack/shape is clickable
            Button(action: {print("better button")},
                label: {
                ZStack {
                    Capsule()
                        .frame(height: 44)
                    Text("Label Button")
                        .foregroundColor(.white)
                }
            })
            
            // Padded button - only the text is clickable.  BAD.
            // Don't use the BAD BUTTON
            Button("Bad Button, not full") {
                print("bad button")
            }
            .padding(.horizontal, 50)
            .padding(.vertical, 10)
            .background(.blue)
            .foregroundColor(.white)
            //.cornerRadius(15)
            .clipShape(Capsule())
            
            // TEXT Button w/buttonStyle
            Button("Bordered ButtonStyle") {
                print("this is a text button")
            }
            .buttonStyle(BorderedButtonStyle())
            // TEXT Button w/buttonStyle
            Button("Default Button") {
                print("this is a text button")
            }
            .buttonStyle(DefaultButtonStyle())
            
            // Button with custom style
            Button("Custom styled button") {
                print("custom")
            }
            .buttonStyle(CustomButtonStyle())
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
