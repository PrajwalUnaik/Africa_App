//
//  MainView.swift
//  Africa
//
//  Created by Prajwal U on 27/12/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            //ContentTAB
            ContentView()
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Browse")
                }
            //VideoTAB
            VideoListView()
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("Watch")
                }
            MapView()
                .tabItem { 
                    Image(systemName: "map")
                    Text("Locations")
                }
            
            GalleryView()
                .tabItem {
                    Image(systemName: "photo")
                    Text("Gallery")
                }
        }
    }
}

#Preview {
    MainView()
}
