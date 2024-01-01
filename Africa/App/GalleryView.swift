//
//  GalleryView.swift
//  Africa
//
//  Created by Prajwal U on 27/12/23.
//

import SwiftUI

struct GalleryView: View {
    
    @State private var SelectedAnimal : String = "lion"
    
    // MARK: - propery
    
    //    let gridLayout : [GridItem] = [
    //        GridItem(.flexible()),
    //        GridItem(.flexible()),
    //        GridItem(.flexible()) ]
    
    // let gridLayout : [GridItem] = Array(repeating: GridItem(.flexible()), count: 3)
    
    @State private var gridLayout : [GridItem] = [GridItem(.flexible())]
    @State private var gridColoum : Double = 3.0
    
    func gridSwitch () {
        gridLayout = Array(repeating: .init(.flexible()), count: Int(gridColoum))
    }
    
    let animals:[Animal] =  Bundle.main.decode("animals.json")
    
    // MARK: - BODY
    
    var body: some View {
        ScrollView(.vertical , showsIndicators: false) {
            
            
            
            // MARK: - slider
            
            
            
            // MARK: - grid
            
            Image(SelectedAnimal)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white , lineWidth: 4))
                .padding()
            
            
            
            Slider(value: $gridColoum , in: 1...5 , step: 1)
                .padding()
                .onChange(of: gridColoum, perform: { value in
                    gridSwitch()
                })
            
            VStack(alignment: .center , spacing: 30) {
                LazyVGrid(columns: gridLayout , alignment: .center , spacing: 10) {
                    ForEach(animals) { item in
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.accentColor , lineWidth: 1))
                            .onTapGesture {
                                SelectedAnimal = item.image
                            }
                    }
                }//GRID
                .animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/)
                .onAppear(perform: {
                    gridSwitch()
                })
            } //End of Vstack
            .padding(.vertical ,50)
            .padding(.horizontal ,10)
        }.frame(maxWidth: .infinity , maxHeight: .infinity)
            .background(MotionAnimationView().ignoresSafeArea())
    }
}

// MARK: - Preview

#Preview {
    GalleryView()
}
