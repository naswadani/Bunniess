//
//  AlbumDetailView.swift
//  BuniessApp
//
//  Created by naswakhansa on 10/12/23.
//

import SwiftUI

struct AlbumDetailView: View {
    var albumDetail : newJeansAlbum
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center, spacing: 20){
                    Image(albumDetail.coverImage)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(height: 150)
                    Text(albumDetail.name)
                        .font(.title3)
                        .fontWeight(.regular)
                }
                .padding(.vertical, 50)
                ForEach(albumDetail.listSong, id: \.self){item in
                    Divider()
                    NavigationLink(destination:MusicPlayView(music: item, photo: albumDetail)){
                        ListSongView(albumDetail: item)
                    }
                }
                Spacer()
            }.navigationBarTitle(albumDetail.name, displayMode: .inline)
        }
    }
}

#Preview {
    AlbumDetailView(albumDetail: albumData[0])
}
