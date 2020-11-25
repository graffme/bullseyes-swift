//
//  AboutView.swift
//  BullsEyes
//
//  Created by daria on 24/11/2020.
//

import SwiftUI

struct AboutView: View {
    struct HeadingStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .foregroundColor(Color.black)
                .font(Font.custom("Arial Rounded MT Bold", size: 30))
                .padding(.vertical, 20)
        }
    }
    
    struct TextStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .foregroundColor(Color.black)
                .font(Font.custom("Arial Rounded MT Bold", size: 16))
                .padding(.leading, 60)
                .padding(.trailing, 60)
                .padding(.bottom, 20)
        }
    }
    
    var body: some View {
        Group {
            VStack {
                Text("🎯 Bulleseye 🎯").modifier(HeadingStyle())
                Text("This is Bullseye, the game where you can win points and earn fame by whatever.").modifier(TextStyle())
                Text("This is Bullseye, the game where you can win points and earn fame by whatever.").modifier(TextStyle())
                Text("Enjoy").modifier(TextStyle())
            }
            .background(Color(red: 255.0 / 255.0, green: 214.0 / 255.0, blue: 179.0 / 255.0))
            .navigationTitle("About")
        }
        .background(Image("Background"), alignment: .center)
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896, height: 414))
    }
}
