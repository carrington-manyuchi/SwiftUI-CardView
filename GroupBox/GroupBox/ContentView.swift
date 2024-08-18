//
//  ContentView.swift
//  GroupBox
//
//  Created by Manyuchi, Carrington C on 2024/08/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundStyle(.red.gradient.opacity(0.5))
                .ignoresSafeArea()
            VStack {
                GroupBox {
                    GroupBox {
                        MusicPlayerView()
                    }
                } label:  {
                    Label("Now Playing", systemImage: "music.note")
                }
                
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}

