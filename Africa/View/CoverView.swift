//
//  CoverView.swift
//  Africa
//
//  Created by Prajwal U on 27/12/23.
//

import SwiftUI

struct CoverView: View {
    //MARK: Property
    
    let coverImages : [CoverImage] = Bundle.main.decode("covers.json")
    //MARK: Body
    
    var body: some View {
        TabView{
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }//loop
        }//Tab
        .tabViewStyle(PageTabViewStyle())
    }//View
}

//MARK: Preview
#Preview {
    CoverView()
}
