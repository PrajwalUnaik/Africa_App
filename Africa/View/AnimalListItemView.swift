//
//  AnimalListItemView.swift
//  Africa
//
//  Created by Prajwal U on 27/12/23.
//

import SwiftUI

struct AnimalListItemView: View {
    
    let animal : Animal
    
    var body: some View {
        HStack (alignment: .center, spacing: 16){
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90 , height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            
            VStack(alignment: .leading, spacing: 9){
                Text(animal.name).font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(animal.description).multilineTextAlignment(.leading)
                    .font(.footnote)
                    .lineLimit(2)
                    .padding(.trailing , 8)
            }
        }.padding(.bottom)
    }
}
let animals: [Animal] = Bundle.main.decode("animals.json")

#Preview {
    AnimalListItemView(animal: animals[2])
}
