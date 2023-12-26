//
//  ContentView.swift
//  BuniessApp
//
//  Created by naswakhansa on 22/11/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isvisible = false
    var albumNewJeans = albumData
    var body: some View {
        NavigationView {
            ScrollView{
                    VStack() {
                        HStack(){
                            VStack(alignment : .leading) {
                                Text(getFormattedDate())
                                    .font(.callout)
                                    .fontWeight(.regular)
                                    .padding(.horizontal, 25)
                                    .foregroundColor(.black)
                                Text("WELCOME")
                                    .font(.largeTitle)
                                    .bold()
                                    .padding(.horizontal, 25)
                                    .foregroundColor(.black)
                            }
                            
                            Spacer()
                            
                            Image("profilDummy")
                                .resizable()
                                .scaledToFit()
                                .clipShape(.circle)
                                .frame(height: 105)
                                .padding(.horizontal, 20)
                                .overlay(
                                    Circle().stroke(Color.white, lineWidth: 4)
                                )
                        }
                        .padding(.top, 100)
                        .padding(.bottom, 20)
                        
                        Group{
                            InsetCardView()
                                .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        }
                        .padding(.bottom, 25)
                        
                        
                        HeadingView(icons: "music.note", text: "New Jeans Single & EP")
                            .foregroundColor(.black)
                        
                        Group{
                            AlbumCoverView()
                                .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        }
                        .frame(height: 170)
                        .padding(.bottom, 25)
                            
                        Group {
                            HeadingView(icons: "newspaper", text: "News")
                            .padding(.bottom, 15)
                            .foregroundColor(.black)
                            NewsView()
                            .onAppear {
                                print("NewsView appeared")
                                print("Number of news items: \(newsNewJeans.count)")
                            }.padding(.bottom,50)
                            
                        }
                        
                    
                    }
                    
                }.edgesIgnoringSafeArea(.top)
                .background(LinearGradient(colors: [.blueNJ, .pinkNJ], startPoint: .topLeading, endPoint: .bottomTrailing))
        }
    }
}

#Preview {
    ContentView()
}
