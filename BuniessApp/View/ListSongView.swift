//
//  ListSongView.swift
//  BuniessApp
//
//  Created by naswakhansa on 10/12/23.
//

import SwiftUI

struct ListSongView: View {
    var albumDetail : newJeansAlbum.Song
    var body: some View {
        HStack(){
            Text(albumDetail.title)
                .font(.subheadline)
                .fontWeight(.regular)
            Spacer()
            Text(albumDetail.duration)
                .font(.subheadline)
                .fontWeight(.regular)
                .padding(.horizontal, 15)
            
            Image(systemName: "ellipsis")
        }
        .padding(.horizontal, 40)
        .padding(.vertical,20)
        
    }
}

#Preview {
    ListSongView(albumDetail: albumData[0].listSong[0])
}
