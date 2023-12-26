//
//  NewsView.swift
//  BuniessApp
//
//  Created by naswakhansa on 13/12/23.
//

import SwiftUI

//struct NewsView: View {
//    @State private var news = newsNewJeans
//    var body: some View {
//        List{
//            ForEach(news){item in
//                Link(destination : URL(string: item.link)!) {
//                    VStack(alignment : .leading){
//                        Text(item.title)
//                            .font(.headline)
//                            .lineLimit(2)
//                        HStack(){
//                            Text("Posted by \(item.source)")
//                        }
//                    }
//                }
//            }.background(.red)
//        }
//    }
//}

struct NewsView :View {
    @State private var news = newsNewJeans
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(){
                ForEach(news){item in
                    Link(destination : URL(string: item.link)!){
                        VStack(alignment : .leading){
                            Text(item.title)
                                .font(.headline)
                                .lineLimit(2)
                                .multilineTextAlignment(.leading)
                            HStack(){
                                Image(systemName: "network")
                                Text("Posted by \(item.source)")
                            }
                        }.frame(width : 250, height: 200)
                            .padding(.horizontal, 20)
                            .foregroundColor(.black)
                            .background(.blueNJ)
                            .cornerRadius(20)
                    }
                }
            }.padding(.horizontal, 10)
        }
    }
}


#Preview {
    NewsView()
}
