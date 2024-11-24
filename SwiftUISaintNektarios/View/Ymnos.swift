//
//  Ymnos.swift
//  SwiftUISaintNektarios
//
//  Created by Angelos Staboulis on 14/11/24.
//

import SwiftUI
import AVKit
struct Ymnos: View {
    @State var isPlaying:Bool
    let filename = Bundle.main.path(forResource: "agni", ofType: "mp3")!
    @State var urlMain:URL
    @State var player:AVPlayer
    var body: some View {
        VStack{
            Color.black.overlay {
                ZStack{
                    VStack{
                        Image(.agios).resizable().frame(width:600,height:550,alignment: .top)
                    }.frame(maxWidth:.infinity,maxHeight: .infinity,alignment: .top)
                    ZStack{
                        VStack{
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
                        }.frame(maxWidth:.infinity,maxHeight:500,alignment: .bottom)
                    }
                }
                
            }
            
            
        }.onAppear {
            urlMain = URL(fileURLWithPath:filename)
            player = AVPlayer(url: urlMain)
        }
    }
}

