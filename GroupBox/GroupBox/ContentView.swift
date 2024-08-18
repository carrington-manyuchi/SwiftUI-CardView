//
//  ContentView.swift
//  GroupBox
//
//  Created by Manyuchi, Carrington C on 2024/08/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            GroupBox {
                GroupBox {
                    MusicPlayerView()
                }
            } label: {
                Label("Now Playing", systemImage: "music.note")
              }
            .groupBoxStyle(.music)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

