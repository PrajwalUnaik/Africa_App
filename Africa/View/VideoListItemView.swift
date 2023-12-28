//
//  VideoListItem.swift
//  Africa
//
//  Created by Prajwal U on 28/12/23.
//

import SwiftUI

struct VideoListItemView: View {
    
    
    
    let video:Video
    
    var body: some View {
        HStack(spacing: 10) {
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                    .cornerRadius(8)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
            
            }//Zstack
            VStack(alignment: .leading , spacing: 10) {
                
                Text(video.name)
                    .font(.title2)
                    .foregroundColor(.accentColor)
                    .fontWeight(.heavy)
                
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            }//vstack
            
        }//hstsck
    }
}

let Videos:[Video] = Bundle.main.decode("videos.json")
#Preview {
    VideoListItemView(video: Videos[1])
}
