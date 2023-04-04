//
//  TouchDownApp.swift
//  TouchDown
//
//  Created by Sampel on 01/04/2023.
//

import SwiftUI

@main
struct TouchDownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
