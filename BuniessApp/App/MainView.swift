//
//  MainView.swift
//  BuniessApp
//
//  Created by naswakhansa on 07/12/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem {
                    Image(systemName: "house")
                }
            BroadcastMemberView()
                .tabItem {
                    Image(systemName: "dot.radiowaves.left.and.right")
                }
        }
        
    }
}

#Preview {
    MainView()
}
