//
//  BroadcastMemberView.swift
//  BuniessApp
//
//  Created by naswakhansa on 07/12/23.
//

import SwiftUI

struct BroadcastMemberView: View {
    @State private var showNavigationBar = true
    var body: some View {
        NavigationView{
            VStack{
                VStack() {
                    Divider()
                    NavigationLink(destination: BroadCastView()) {
                        HStack (){
                            ZStack(alignment:.topTrailing) {
                                Image(systemName: "dot.radiowaves.left.and.right")
                                Circle()
                                    .frame(width: 10)
                                    .foregroundColor(.red)
                            }
                            Text("BROADCAST")
                        }.padding(20)
                    }
                    Divider()
                    
                    Text("Region : IND")
                        .font(.callout)
                        .foregroundColor(.music)
                        .padding(20)
                }
                //CHAT
                ScrollView {
                    LeftChatView(width: 210, isiChat: "Hai Guys, Salam Kenal 😊", username: "@ryujin")
                    LeftChatView(width: 210, isiChat: "Aku ryujin", username: "@ryujin")
                    
                    RightChatView(isiChat: "Halo ryujin 🎉", username: "@giselle🥳")
                    RightChatView(isiChat: "Aku Giselle", username: "@giselle🥳")
                    RightChatView(isiChat: "Aku Rudi", username: "@Rkopling")
                    
                    LeftChatView(width: 210, isiChat: "Katanya NJ bakal konser di Indo?", username: "@ryujin")
                    RightChatView(isiChat: "Rumornya sih gitu", username: "@giselle🥳")
                    RightChatView(isiChat: "Bener ngga?", username: "@yuna98")
                    RightChatView(isiChat: "Kurang tau juga sih", username: "@giselle🥳")
                    RightChatView(isiChat: "Kalo iya otw nabung ", username: "@giselle🥳")
                    
                    HStack(){
                        VStack(alignment : .leading) {
                            ZStack(alignment : .center){
                                Rectangle()
                                    .foregroundColor(.gray)
                                    .frame(width: 300, height: 250)
                                VStack(){
                                    Image("photo_dummy")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 280, height: 200)
                                    Text("Bener Guys 🥰")
                                        .font(.callout)
                                        .foregroundColor(.white)
                                    
                                }
                            }
                            .frame(width: 300, height: 250)
                            .padding(.leading,12)
                            ZStack(alignment : .center){
                                VStack(){
                                    Text("@yuanko")
                                        .font(.callout)
                                        .foregroundColor(.gray)
                                        .italic()
                                }
                            }
                            .frame(width: 100, height: 0)
                            .padding(.vertical, 6)
                            .padding(.leading,12)
                        }
                        Spacer()
                        
                    }
                    LeftChatView(width: 230, isiChat:"Wah Bakal Ketemu Hanni nih 😘", username: "@ryujin")
                    
                }
                HStack(alignment : .center){
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(.blueNJ, lineWidth: 2)
                        .frame(width: 300, height: 45)
                        .padding(.horizontal, 15)
                        .padding(.top, 15)
                    
                    Image(systemName: "plus")
                        .font(.title)
                    Spacer()
                }
            }.toolbar(showNavigationBar ? .visible : .hidden, for: .tabBar)
                .onAppear{
                    showNavigationBar.toggle()
                }
                .onTapGesture(count : 2){
                    showNavigationBar.toggle()
                }
        }
    }
}

#Preview {
    BroadcastMemberView()
}

struct LeftChatView: View {
    var width : CGFloat = 190
    var height : CGFloat = 60
    var isiChat : String
    var username : String
    var body: some View {
        HStack(){
            Spacer()
            VStack(alignment : .trailing) {
                ZStack(alignment : .center){
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(.blue)
                        .frame(width: width, height: height)
                    VStack(){
                        Text(isiChat)
                            .font(.callout)
                            .foregroundColor(.white)
                        
                    }
                }
                .frame(width: width, height: height)
                .padding(.trailing,12)
                ZStack(alignment : .center){
                    VStack(){
                        Text(username)
                            .font(.callout)
                            .foregroundColor(.gray)
                            .italic()
                    }
                }
                .frame(width: 100, height: 0)
                .padding(.vertical, 6)
                .padding(.trailing,12)
            }
        }
    }
}

struct RightChatView: View {
    var width : CGFloat = 190
    var height : CGFloat = 60
    var isiChat : String
    var username : String
    var body: some View {
        HStack(){
            VStack(alignment : .leading) {
                ZStack(alignment : .center){
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(.gray)
                        .frame(width: width, height: height)
                    VStack(){
                        Text(isiChat)
                            .font(.callout)
                            .foregroundColor(.white)
                        
                    }
                }
                .frame(width: width, height: height)
                .padding(.leading,12)
                ZStack(alignment : .center){
                    VStack(){
                        Text(username)
                            .font(.callout)
                            .foregroundColor(.gray)
                            .italic()
                    }
                }
                .frame(width: 100, height: 0)
                .padding(.vertical, 6)
                .padding(.leading,12)
            }
            Spacer()
            
        }
    }
}
