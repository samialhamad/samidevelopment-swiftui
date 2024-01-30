//
//  ContentView.swift
//  RandomPicker
//
//  Created by Wisam Alhamad on 1/29/24.
//

import SwiftUI

struct ContentView: View {
    var images = ["charleyrivers", "icybay", "turtlerock", "twinlake", "rainbowlake"]
    
    @State private var selected = "icybay"
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Welcome to")
                    .foregroundColor(.blue)
                    .font(.largeTitle)
                
                Circle()
                    .fill(.purple)
                    .padding()
                    .shadow(radius: 5)
                
                    .overlay {
                        Image(selected)
                            .clipShape(Circle())
                            .overlay {
                                Circle().stroke(.white, lineWidth: 4)
                                    .shadow(radius: 7)
                            }
                    }
                
                VStack(alignment: .leading){
                    Text(selected)
                        .font(.title)
                    
                    Divider()
                    
                    Text("Want to pick another destination? Click the button below!")
                    
                }
                
            }
            .padding()
            
            Button("Pick Again") {
                withAnimation(.spring(duration: 1)) {
                    selected = images.randomElement() ?? "twinlake"
                }
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}


#Preview {
    ContentView()
}
