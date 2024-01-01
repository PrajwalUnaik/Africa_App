//
//  ContentView.swift
//  Africa
//
//  Created by Prajwal U on 27/12/23.
//

import SwiftUI

struct ContentView: View {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    var body: some View {
        
        // MARK: - properties
        NavigationView {
            List{
                CoverView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                ForEach(animals) { animal in
                    
                    NavigationLink(destination: AnimalDetailView(animal: animal)){
                        AnimalListItemView(animal: animal)
                    }
                    
                }
            }
            .navigationBarTitle("Africa".uppercased(), displayMode: .large)
        }
        
    }
}

#Preview {
    ContentView()
}
