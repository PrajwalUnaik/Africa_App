//
//  videosModel.swift
//  Africa
//
//  Created by Prajwal U on 28/12/23.
//

import Foundation
import SwiftUI

struct Video: Codable,Identifiable {
    let id, name, headline: String
    
    var thumbnail:String
    {
        "video-\(id)"
    }

}



//computed property

