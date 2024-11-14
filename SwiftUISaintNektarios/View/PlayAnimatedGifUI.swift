//
//  PlayAnimatedGifUI.swift
//  SwiftUISaintNektarios
//
//  Created by Angelos Staboulis on 14/11/24.
//

import Foundation
import SwiftUI
struct PlayAnimatedGifUI:UIViewRepresentable{
    typealias UIViewType = PlayAnimatedGif
    func makeUIView(context: Context) -> PlayAnimatedGif {
        return PlayAnimatedGif()
    }
    func updateUIView(_ uiView: PlayAnimatedGif, context: Context) {
        
    }
}
