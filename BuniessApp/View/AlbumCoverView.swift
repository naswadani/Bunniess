//
//  AlbumCoverView.swift
//  BuniessApp
//
//  Created by naswakhansa on 10/12/23.
//

import SwiftUI

struct AlbumCoverView: View {
    var album = albumData
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(alignment : .center){
                ForEach(album, id: \.self){item in
                    NavigationLink(destination : AlbumDetailView(albumDetail: item)){
                        VStack {
                            Image(item.coverImage)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 150, height: 150)
                                .cornerRadius(15)
                            Text(item.name)
                                .font(.subheadline)
                                .foregroundColor(.black)
                                .lineLimit(1)
                                .fontWeight(.heavy)
                        }
                        .frame(width : 150)
                        .padding(.horizontal, 10)
                    }
                }
            }
        }
    }
}

#Preview {
    AlbumCoverView()
}
