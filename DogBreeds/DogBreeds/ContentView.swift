//
//  ContentView.swift
//  DogBreeds
//
//  Created by Leandro Carvalho on 26/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // Breeds Title
        VStack {
            Text("Akita")
                .font(.custom("Paprus", size: 40))
                .fontWeight(.bold)
            
            ZStack {
                Rectangle()
                    .frame(width: 370, height: 420)
                    .cornerRadius(30)
                    .shadow(color: .black ,radius: 30)
                Rectangle()
                    .frame(width: 350, height: 400)
                    .cornerRadius(30)
                    .shadow(color: .white ,radius: 30)
                
                VStack {
                    Image("akita")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(10)
                        .padding(20)
                    Text("Akita is a muscular double coated dog of ancient Jpanese lineage famous for her dignity, courage and loyalty.")
                        .lineLimit(10)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .padding(20)
                }
            }
            .padding()
        }
        
        
        
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
