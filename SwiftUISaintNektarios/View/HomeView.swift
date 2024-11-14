//
//  HomeView.swift
//  SwiftUISaintNektarios
//
//  Created by Angelos Staboulis on 14/11/24.
//

import SwiftUI

struct HomeView: View {
    @State var flipped: Bool = false

    var body: some View {
        VStack{
            CandleSwiftUI().overlay {
                PlayAnimatedGifUI()
            }
        }
    }
}

#Preview {
    HomeView()
}
