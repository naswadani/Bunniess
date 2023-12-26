//
//  TabModel.swift
//  BuniessApp
//
//  Created by naswakhansa on 07/12/23.
//

import SwiftUI

enum TabModel : String, CaseIterable {
    case home = "Home"
    case entertiment = "Entertaiment"
    case broadcast = "Broadcast"
    case chat = "Chat"
    case settings = "Settings"
    
    var systemImage : String {
        switch self{
            case .home :
                return "house.fill"
            case .entertiment :
                return "play.tv.fill"
            case .broadcast :
                return "person.2.fill"
            case .chat :
                return "bubble.fill"
            case .settings :
                return "gear"
        }
    }
    
    var index : Int {
        return TabModel.allCases.firstIndex(of: self) ?? 0
    }
}
