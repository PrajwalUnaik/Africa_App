//
//  VideoListView.swift
//  Africa
//
//  Created by Prajwal U on 27/12/23.
//

import SwiftUI

struct VideoListView: View {
    // MARK: - properties
    
    let hapticImapact  = UIImpactFeedbackGenerator(style: .medium)
    @State var video: [Video] = Bundle.main.decode("videos.json")
    
    
    // MARK: - body
    
    var body: some View {
        NavigationView {
            List {
                ForEach(video) { item in
                    VideoListItemView(video: item)
                        .padding(.vertical ,8)
                } //loop
            } //list
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Videos" , displayMode: .inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing)
                {
                    Button(action:{
                        video.shuffle()
                        hapticImapact.impactOccurred()
                    })
                    {
                        Image(systemName: "arrow.2.squarepath")
                    }
                }
            }
        }//NView
    }
}

#Preview {
    VideoListView()
}
