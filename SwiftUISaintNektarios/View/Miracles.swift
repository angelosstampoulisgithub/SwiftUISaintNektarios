//
//  Miracles.swift
//  SwiftUISaintNektarios
//
//  Created by Angelos Staboulis on 14/11/24.
//

import SwiftUI

struct Miracles: View {
    @StateObject var viewModel = ViewModel()
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
                    VStack{
                        List(viewModel.createMiracles(),id:\.self){item in
                            NavigationLink {
                                VStack{
                                    backgroundGradient.overlay {
                                        ScrollView{
                                            ZStack{
                                                VStack{
                                                    Image(.agios).resizable().frame(width:100,height:95,alignment: .top)
                                                }.frame(maxWidth:.infinity,maxHeight:.infinity,alignment:.top)
                                            }
                                            VStack{
                                                Text(item.miracle).frame(width:350).foregroundStyle(.white)
                                            }.padding(100)
                                        }
                                    }.navigationTitle("Ανάγνωση Αρθρου")
                                    .navigationBarTitleDisplayMode(.inline)
                                }
                            } label: {
                                Text(item.title).foregroundStyle(.white)
                            }.listRowBackground(backgroundGradient)
                            .foregroundStyle(.white)
                        }.background(Color.clear)
                        .scrollContentBackground(.hidden)
                        .padding(65)
                        .frame(width:555,alignment: .leading)
                    }.background(Color.clear)
                }
            }
        }
       
    }
}
#Preview {
    Miracles()
}
