//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Wisam Alhamad on 1/24/24.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
