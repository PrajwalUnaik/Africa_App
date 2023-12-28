//
//  ExternalWeblinkView.swift
//  Africa
//
//  Created by Prajwal U on 28/12/23.
//

import SwiftUI

struct ExternalWeblinkView: View {
    
    var animal : Animal
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group{
                    Image(systemName: "arrow.up.right.square")
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
                }
                .foregroundColor(.accentColor)
            }//hstack
        }//Box
    }
}

let animals3 : [Animal] = Bundle.main.decode("animals.json")
#Preview {
    ExternalWeblinkView(animal: animals3[0])
}
