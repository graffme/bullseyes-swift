//
//  AboutView.swift
//  BullsEyes
//
//  Created by daria on 24/11/2020.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack {
            Text("🎯 Bulleseye 🎯")
            Text("This is Bullseye, the game where you can win points and earn fame by whatever.")
            Text("This is Bullseye, the game where you can win points and earn fame by whatever.")
            Text("Enjoy")
        }
        .navigationTitle("About")
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896, height: 414))
    }
}
