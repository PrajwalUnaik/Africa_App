//
//  InsertgalleryView.swift
//  Africa
//
//  Created by Prajwal U on 27/12/23.
//

import SwiftUI

struct InsertgalleryView: View {
    let animal: Animal
    var body: some View 
    {
        ScrollView(.horizontal , showsIndicators: false){
            HStack(alignment : .center,spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable().scaledToFit()
                        .frame(height: 200)
                    .cornerRadius(12)
                }
            }
        }
    }
}

let animal: [Animal] = Bundle.main.decode("animals.json")
#Preview {
    InsertgalleryView(animal: animal[4])
}
