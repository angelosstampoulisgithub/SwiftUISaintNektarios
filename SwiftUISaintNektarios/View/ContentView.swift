//
//  ContentView.swift
//  SwiftUISaintNektarios
//
//  Created by Angelos Staboulis on 14/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Image("home")
                    Text("Αρχική")
                }
            Biographia()
                .tabItem {
                    Image("resume")
                    Text("Βιογραφία")
            }
            Multimedia()
                .tabItem {
                    Image("multimedia")
                    Text("Πολυμέσα")
            }
            Miracles()
                .tabItem {
                    Image("miracle")
                    Text("Θαύματα")
            }
        }
    }
}

#Preview {
    ContentView()
}
