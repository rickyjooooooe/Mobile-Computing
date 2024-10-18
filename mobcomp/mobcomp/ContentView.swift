//
//  ContentView.swift
//  mobcomp
//
//  Created by student on 18/10/24.
//

import SwiftUI

struct ContentView: View {
    let flags = [
            "🇦🇺", "🇧🇷", "🇨🇦", "🇩🇪", "🇮🇩",
            "🇮🇹", "🇯🇵", "🇲🇽", "🇷🇺", "🇺🇸",
            "🇦🇷", "🇫🇷", "🇬🇧", "🇮🇳", "🇰🇷",
            "🇸🇪", "🇿🇦", "🇹🇭", "🇻🇳", "🇪🇸",
            "🇳🇱", "🇵🇰"
        ]
    @State private var currentFlag = "🏳️"

    var body: some View {
        VStack {
            Text(currentFlag)
                .font(.system(size: 200))
                .padding()
                .background(Color.black)
                .foregroundColor(.white)
                .padding()
                .animation(.easeInOut(duration: 0.5), value: currentFlag)
                       
            Button(action: {
                currentFlag = flags.randomElement()!})
                {
                    Text("Gooooo!")
                    .font(.largeTitle)
                    .padding()
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
