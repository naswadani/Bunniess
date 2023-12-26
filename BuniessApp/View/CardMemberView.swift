//
//  CardMemberView.swift
//  BuniessApp
//
//  Created by naswakhansa on 23/11/23.
//

import SwiftUI

struct CardMemberView: View {
    var body: some View {
        TabView{
            ForEach(coverMember, id: \.self ){item in
                Image(item)
                    .resizable()
                    .frame(height: 230)
                    .cornerRadius(20)
            }
           
        }
        .tabViewStyle(PageTabViewStyle())
        .frame(height: 250)
    }
}

#Preview {
    CardMemberView()
}
