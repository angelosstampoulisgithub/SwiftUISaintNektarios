//
//  CandleSwiftUI.swift
//  SwiftUISaintNektarios
//
//  Created by Angelos Staboulis on 14/11/24.
//

import Foundation
import SwiftUI
struct CandleSwiftUI:UIViewRepresentable{
    typealias UIViewType = CandleView
    func makeUIView(context: Context) -> CandleView {
        return CandleView()
    }
    
    func updateUIView(_ uiView: CandleView, context: Context) {
        uiView.setNeedsLayout()
    }
    
    
}
