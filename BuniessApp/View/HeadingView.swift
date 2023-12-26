//
//  HeadingView.swift
//  BuniessApp
//
//  Created by naswakhansa on 10/12/23.
//

import SwiftUI

struct HeadingView: View {
    var icons : String
    var text : String
    var body: some View {
        HStack{
            Image(systemName: icons)
                .imageScale(.medium)
            Text(text)
                .font(.title3)
                .fontWeight(.semibold)
            Spacer()
        }
        .padding(.leading, 15)
    }
}

#Preview {
    HeadingView(icons: "music.note", text: "New Jeans Single & EP")
}
