//
//  InsetFactView.swift
//  Africa
//
//  Created by Prajwal U on 28/12/23.
//

import SwiftUI

struct InsetFactView: View {
    // MARK: - property
    
    let animal:Animal
    
    var body: some View {
        
        
        GroupBox{
            TabView{
                ForEach(animal.fact , id: \.self) { item in
                    Text(item)
                }//loop
            }//tab
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148 ,idealHeight: 168,maxHeight: 180)
        }//BOX
    }
}

let animals1:[Animal] = Bundle.main.decode("animals.json")

#Preview {
    InsetFactView(animal: animals1[0])
}
