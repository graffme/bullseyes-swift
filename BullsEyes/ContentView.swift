//
//  ContentView.swift
//  BullsEyes
//
//  Created by daria on 23/11/2020.
//

import SwiftUI

struct ContentView: View {
    
    @State var alertIsVisible: Bool = false
    @State var sliderValue: Double = 50.0
    
    var body: some View {
        VStack {
            Spacer()
            // Target row
            HStack {
                Text("Put the bulls eyes as close as you can:")
                Text("100")
            }
            Spacer()
            // Slider row
            HStack {
                Text("1")
                Slider(value: $sliderValue, in: 1...100)
                Text("100")
            }
            Spacer()
            // Button row
            Button(action: {
                print("Button pressed")
                self.alertIsVisible = true
            }) {
                Text("Hit Me!")
            }
            .alert(isPresented: $alertIsVisible){ () -> Alert in
                let roundedValue: Int = Int(self.sliderValue.rounded())
                return Alert(title: Text("Hello there"), message: Text("The slider value is \(roundedValue)"), dismissButton: .default(Text("Awesome!")))
            }
            Spacer()
            // Score row
            HStack {
                Button(action: {}) {
                    Text("Start over")
                }
                Spacer()
                Text("Score")
                Text("999999")
                Spacer()
                Text("Round")
                Text("99")
                Spacer()
                Button(action: {}) {
                    Text("Info")
                }
            }
            .padding(.bottom, 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896, height: 414))
    }
}
