//
//  Apolytikio.swift
//  SwiftUISaintNektarios
//
//  Created by Angelos Staboulis on 14/11/24.
//

import SwiftUI
import AVKit
struct Apolytikio: View {
    @State var isPlaying:Bool
    let filename = Bundle.main.path(forResource: "apolitikio", ofType: "mp3")!
    @State var urlMain:URL
    @State var player:AVPlayer

    var body: some View {
        VStack{
            Image(.agios).resizable()
            Button {
                isPlaying.toggle()
                if isPlaying{
                    player.play()
                }else{
                    player.pause()
                }
            } label: {
                if isPlaying{
                    Image(.pause)
                }else{
                    Image(.play)
                }
            }.background(
                Circle()
                    .fill(Color.red)
                    .frame(width: 55,height:50)
            )

        }.onAppear {
            urlMain = URL(fileURLWithPath:filename)
            player = AVPlayer(url: urlMain)
        }
    }
}

