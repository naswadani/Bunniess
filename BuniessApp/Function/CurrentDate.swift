//
//  CurrentDate.swift
//  BuniessApp
//
//  Created by naswakhansa on 09/12/23.
//

import Foundation

func getFormattedDate() -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "EEEE, MM-dd-yyyy"
            
    let currentDate = Date()
    let dateString = dateFormatter.string(from: currentDate)

    return dateString
}
