//
//  Multimedia.swift
//  SwiftUISaintNektarios
//
//  Created by Angelos Staboulis on 14/11/24.
//

import SwiftUI

struct Multimedia: View {
    @State var items:[String] = ["Φωτογραφικό Υλικό","Υμνος στην Παναγία","Απολυτίκιο Αγίου Νεκταρίου","Κατάλογος Βιβλίων"]
    let backgroundGradient = LinearGradient(
        colors: [Color.black, Color.black],
        startPoint: .top, endPoint: .bottom)
    var body: some View {
        NavigationStack{
            ZStack{
                backgroundGradient.overlay {
                    VStack{
                        Image(.agios).resizable().frame(width:100,height:95,alignment: .top)
                    }.frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .top)
                    
                    List(items,id:\.self){item in
                        if (item.elementsEqual( "Φωτογραφικό Υλικό")){
                            NavigationLink {
                                ZStack{
                                    VStack{
                                        PageCurl()
                                    }.frame(maxWidth:.infinity,maxHeight: .infinity,alignment: .top)
                                }.navigationTitle("Φωτογραφικό Υλικό")
                                    .navigationBarTitleDisplayMode(.inline)
                            } label: {
                                Text(item).foregroundStyle(.white)
                            }.listRowBackground(backgroundGradient)
                            .foregroundStyle(.white)
                        }
                        if (item.elementsEqual("Απολυτίκιο Αγίου Νεκταρίου")){
                            NavigationLink {
                                ZStack{
                                    VStack{
                                        Apolytikio(isPlaying: false, urlMain: URL(fileURLWithPath: ""), player: .init())
                                    }.frame(maxWidth:.infinity,maxHeight: .infinity,alignment: .top)
                                }.navigationTitle("Απολυτίκιο Αγίου Νεκταρίου")
                                    .navigationBarTitleDisplayMode(.inline)
                            } label: {
                                Text(item).foregroundStyle(.white)
                            }.listRowBackground(backgroundGradient)
                            .foregroundStyle(.white)
                        }
                        if (item.elementsEqual("Υμνος στην Παναγία")){
                            NavigationLink {
                                ZStack{
                                    VStack{
                                        Ymnos(isPlaying: false, urlMain: URL(fileURLWithPath: ""), player: .init())
                                    }.frame(maxWidth:.infinity,maxHeight: .infinity,alignment: .top)
                                }.navigationTitle("Υμνος στην Παναγία")
                                    .navigationBarTitleDisplayMode(.inline)
                            } label: {
                                Text(item).foregroundStyle(.white)
                            }.listRowBackground(backgroundGradient)
                            .foregroundStyle(.white)
                        }
                        if item == "Κατάλογος Βιβλίων"{
                            NavigationLink {
                                ZStack{
                                    VStack{
                                        Books()
                                    }.frame(maxWidth:.infinity,maxHeight: .infinity,alignment: .top)
                                }.navigationTitle("Κατάλογος Βιβλίων")
                                    .navigationBarTitleDisplayMode(.inline)
                            } label: {
                                Text(item).foregroundStyle(.white)
                            }.listRowBackground(backgroundGradient)
                            .foregroundStyle(.white)
                        }
                    }.background(Color.clear)
                    .scrollContentBackground(.hidden)
                    .padding(65)
                    .frame(width:555,alignment: .leading)
                }
            }
        }
    }
}
#Preview {
            Multimedia()
}
