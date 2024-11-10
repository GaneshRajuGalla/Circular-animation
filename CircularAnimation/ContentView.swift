//
//  ContentView.swift
//  CircularAnimation
//
//  Created by Ganesh Raju Galla on 10/11/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animate = false
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            Circle()
                .stroke(
                    LinearGradient(
                        gradient: Gradient(colors: [.orange, .yellow, .green, .cyan, .blue, .purple]),
                        startPoint: UnitPoint(x: animate ? 0.5 : -1, y: animate ? 0.5 : -0.5),
                        endPoint: UnitPoint(x: animate ? 2 : 0.5, y: animate ? 1.5 : 0.5)
                    ),
                    lineWidth: 12
                )
                .frame(width: 255, height: 255)
                .blur(radius: 20)
                .shadow(color: .yellow, radius: 16, x: 16, y: 16)
                
            Circle()
                .stroke(
                    LinearGradient(
                        gradient: Gradient(colors: [.orange, .yellow, .green, .cyan, .blue, .purple]),
                        startPoint: UnitPoint(x: animate ? 0.5 : -1, y: animate ? 0.5 : -0.5),
                        endPoint: UnitPoint(x: animate ? 2 : 0.5, y: animate ? 1.5 : 0.5)
                    ),
                    lineWidth: 5
                )
                .frame(width: 255, height: 255)
                .onAppear {
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                        animate = true
                    }
                }
            
            Circle()
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.black, Color(white: 0.15)]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .frame(width: 250, height: 250)
        }
    }
}

#Preview {
    ContentView()
}
