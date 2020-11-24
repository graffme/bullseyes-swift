//
//  BullsEyesApp.swift
//  BullsEyes
//
//  Created by daria on 23/11/2020.
//

import SwiftUI

@main
struct BullsEyesApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }.navigationViewStyle(StackNavigationViewStyle())
        }
    }
}

struct BullsEyesApp_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896, height: 414))
    }
}
