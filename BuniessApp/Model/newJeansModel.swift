//
//  newJeansModel.swift
//  BuniessApp
//
//  Created by naswakhansa on 22/11/23.
//

import SwiftUI

struct newJeansMemberDetail : Identifiable, Hashable{
    var id = UUID()
    var nameDebut : String
    var image : [String]
    var birthName : String
    var birthDay : String
    var nationality : [String]
    var biography : String
    var coverMember : String
    
}

struct newJeansAlbum : Identifiable, Hashable {
    var id = UUID()
    var name : String
    var coverImage : String
    var releaseDate : String
    var listSong : [Song]
    
    struct Song : Hashable{
        var title : String
        var duration :String
    }
}

struct newJeansNews : Identifiable, Hashable{
    var id = UUID()
    var title : String
    var source : String
    var link : String
}
