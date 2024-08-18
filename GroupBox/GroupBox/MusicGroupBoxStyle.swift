//
//  MusicGroupBoxStyle.swift
//  GroupBox
//
//  Created by Manyuchi, Carrington C on 2024/08/18.
//

import SwiftUI

struct MusicGroupBoxStyle: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .leading, content: {
            configuration.label
                .bold()
                .fontDesign(.monospaced)
                .foregroundStyle(.pink)
            configuration.content
        })
        .padding()
        .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 12))
    }
}


extension GroupBoxStyle where Self == MusicGroupBoxStyle {
    static var music: MusicGroupBoxStyle {
        .init()
    }
}
