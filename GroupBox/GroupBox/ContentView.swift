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
            GroupBox(label: Label("Now Playing", systemImage: "music.note"), content: {
                MusicPlayerView()
            })
        }
        .padding()
    
        
    }
}

#Preview {
    ContentView()
}



struct MusicPlayerView: View {
    var body: some View {
        VStack {
            HStack {
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 50, height: 50, alignment: .center)
                    .foregroundStyle(.secondary)
                VStack(alignment: .leading, spacing: 2, content: {
                    Text("Cool Song Title")
                        .font(.headline.bold())
                    Text("Artist Name")
                        .font(.footnote)
                        .foregroundStyle(.secondary)
                })
                Spacer()
            }
            .padding()
            
            ProgressView(value: 0.4, total: 1)
                .tint(.secondary)
                .padding(.bottom, 20)
            
            HStack(spacing: 30, content: {
                Image(systemName: "backward.fill")
                Image(systemName: "pause.fill")
                Image(systemName: "forward.fill")
            })
            .foregroundStyle(.secondary)
            .font(.title2)
        }
    }
}
