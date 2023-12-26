//
//  MusicPlayView.swift
//  BuniessApp
//
//  Created by naswakhansa on 12/12/23.
//

import SwiftUI
struct MusicPlayView: View {
    @State private var showNavigationBar = true
    var music : newJeansAlbum.Song
    var photo : newJeansAlbum
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            Image(photo.coverImage)
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .frame(width: 250, height: 250)
                .padding(.top, 75)
                .padding(.bottom, 50)
            VStack(alignment : .leading) {
                Text(music.title)
                    .font(.title)
                    .lineLimit(1)
                    .padding(.horizontal,30)
                
                LineProgress(linesec: 75, padding: 30)
                    .padding(.bottom, 50)
                
                HStack (spacing : 50){
                    Image(systemName: "backward.fill")
                        .font(.largeTitle)
                    Image(systemName: "play.fill")
                        .font(.largeTitle)
                    Image(systemName: "forward.fill")
                        .font(.largeTitle)
                }
                .padding(.horizontal, 80)
                .padding(.bottom, 100)
                
                HStack{
                    Image(systemName: "speaker.fill")
                        .font(.headline)
                        .padding(.leading, 20)
                    LineProgress(linesec: 200, padding: 0)
                    Image(systemName: "speaker.wave.3.fill")
                        .padding(.trailing, 20)
                }
                .padding(.bottom,20)
                HStack(spacing: 70){
                    Image(systemName: "quote.bubble")
                        .font(.title)
                    Image(systemName: "airplayaudio")
                        .font(.title)
                    Image(systemName: "list.bullet")
                        .font(.title)
                }.padding(.horizontal, 80)
            }
        }
        .background(.colorBackgroundMusic)
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .toolbar(showNavigationBar ? .visible : .hidden, for: .tabBar)
        .onAppear{
            showNavigationBar.toggle()
        }
        .onDisappear{
            showNavigationBar.toggle()
        }
        
    }
}

#Preview {
    MusicPlayView(music : albumData[0].listSong[0], photo: albumData[0])
}

struct LineProgress: View {
    var linesec : CGFloat
    var padding : CGFloat
    var body: some View {
        ZStack(alignment : .leading) {
            RoundedRectangle(cornerRadius: 70)
                .frame(height: 5)
                .padding(.horizontal,padding)
                .foregroundColor(.gray)
                .opacity(0.8)
            RoundedRectangle(cornerRadius: 70)
                .frame(width: linesec, height: 5)
                .foregroundColor(.music)
                .padding(.leading,padding)
        }
    }
}
