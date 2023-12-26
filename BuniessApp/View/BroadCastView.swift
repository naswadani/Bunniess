//
//  BroadCastView.swift
//  BuniessApp
//
//  Created by naswakhansa on 13/12/23.
//

import SwiftUI

struct BroadCastView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            RightChatView(isiChat: "안녕하세요", username: "minji")
            RightChatView(width:250 , isiChat: "내 새로운 머리 스타일 어때?", username: "minji")
            HStack(){
                VStack(alignment : .leading) {
                    ZStack(alignment : .center){
                        Rectangle()
                            .foregroundColor(.gray)
                            .frame(width: 210, height: 250)
                        VStack(){
                            Image("minji_pic_chat")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 225, height: 225)
                            
                        }
                    }
                    .frame(width: 210, height: 250)
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
            RightChatView(width:250 , isiChat: "아아 멋지다 ❤️", username: "hanni")
            RightChatView(isiChat: "좋아요" , username: "hyein")
            RightChatView(isiChat: "❤️❤️❤️" , username: "minji")
        }
        
        
    }
}

#Preview {
    BroadCastView()
}
