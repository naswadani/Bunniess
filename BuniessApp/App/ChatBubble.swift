//
//  ChatBubble.swift
//  BuniessApp
//
//  Created by naswakhansa on 13/12/23.
//

import SwiftUI

struct ChatBubble: View {
    var isMyMessage: Bool
    var message: String

    var body: some View {
        HStack {
            if isMyMessage {
                Spacer()
                Text(message)
                    .padding(10)
                    .background(Color.blue)
                    .clipShape(ChatBubbleShape(isMyMessage: isMyMessage))
                    .foregroundColor(.white)
                    .padding(10)
            } else {
                Text(message)
                    .padding(10)
                    .background(Color.gray)
                    .clipShape(ChatBubbleShape(isMyMessage: isMyMessage))
                    .foregroundColor(.white)
                    .padding(10)
                Spacer()
            }
        }
    }
}

struct ChatBubbleShape: Shape {
    var isMyMessage: Bool

    func path(in rect: CGRect) -> Path {
        var path = Path()

        if isMyMessage {
            path.move(to: CGPoint(x: rect.minX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.maxX - 10, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY + 10))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY - 10))
            path.addLine(to: CGPoint(x: rect.maxX - 10, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        } else {
            path.move(to: CGPoint(x: rect.maxX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.minX + 10, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.minY + 10))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY - 10))
            path.addLine(to: CGPoint(x: rect.minX + 10, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        }

        return path
    }
}

struct ChatView: View {
    var body: some View {
        VStack {
            ChatBubble(isMyMessage: true, message: "Hello, how are you?")
            ChatBubble(isMyMessage: false, message: "Hi! I'm good, thanks. How about you?")
            ChatBubble(isMyMessage: true, message: "I'm doing well too. Thanks!")
        }
        .padding()
    }
}

#Preview {
    ChatView()
}
