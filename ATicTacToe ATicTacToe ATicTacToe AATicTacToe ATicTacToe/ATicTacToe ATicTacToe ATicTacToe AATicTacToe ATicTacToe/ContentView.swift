//
//  ContentView.swift
//  ATicTacToe ATicTacToe ATicTacToe AATicTacToe ATicTacToe
//
//  Created by Juan Manuel Moreno on 11/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
                VStack {
                    ForEach(0..<3) { row in
                        HStack {
                            ForEach(0..<3) { row in
                                Rectangle()
                                    .fill(Color.red)
//                                        .frame(width: geometry.size.width / 3, height: geometry.size.height / 3)
                                    .frame(width: 42, height: 28)

//                                        .rotation3DEffect(
//                                            .degrees(45),
//                                            axis: (0, 1, 0), // Y axis
//                                            anchor: .center
//                                        )
//                                        .rotation3DEffect(
//                                            .degrees(45),
//                                            axis: (0, 0, 12), // Y axis
//                                            anchor: .center
//                                        )
                                    .onTapGesture(perform: { value in
                                        print("value is \(value)")
                                    })
                            }
                        }
                    }
                }
                .rotationEffect(Angle(degrees: -45)) // Rotate by 45 degrees to create an isometric view
                .scaleEffect(x: 1, y: 0.5) // Scale the y-axis to create an isometric view

//                .rotation3DEffect(
//                    .degrees(45),
//                    axis: (1, 0, 0), // Y axis
//                    anchor: .center
//                )
//                .rotation3DEffect(
//                    .degrees(45),
//                    axis: (0, 0, 1), // Y axis
//                    anchor: .center
//                )

//                GeometryReader { geometry in

            }
            .padding()
        
    }
}

#Preview {
    ContentView()
}
