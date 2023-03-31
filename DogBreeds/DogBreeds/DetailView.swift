//
//  ContentView.swift
//  DogBreeds
//
//  Created by Leandro Carvalho on 26/03/23.
//

import SwiftUI

struct DetailView: View {
    
    var dogBreedData: BreedData
    
    var body: some View {
        
        // Breeds Title
        VStack(spacing: 0) {
            Text(dogBreedData.breed)
                .font(.custom("Papyrus", size: 30))
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            ZStack {
                Rectangle()
                    .frame(width: 370, height: 420)
                    .cornerRadius(30)
                    .shadow(color: .white ,radius: 30)
                Rectangle()
                    .frame(width: 350, height: 400)
                    .cornerRadius(30)
                    .shadow(color: .white ,radius: 30)
                
                VStack {
                    Image(dogBreedData.imageName)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(10)
                        .padding(10)
                        .background(.linearGradient(Gradient(colors: [.white, .black, .white, .black, .white]), startPoint: .top, endPoint: .bottom))
                        .cornerRadius(10)
                        .padding(5)
                        
                    Text(dogBreedData.description)
                        .lineLimit(4)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .padding(20)
                }.padding(30)
            }
            
            Spacer()
            
            HStack {
                LabelsAndIconsView()
                HStack {
                    VStack(alignment: .leading) {
                        DisplayDatalabels(label: dogBreedData.group)
                        DisplayDatalabels(label: dogBreedData.height)
                        DisplayDatalabels(label: dogBreedData.weight)
                        DisplayDatalabels(label: dogBreedData.lifeExpectancy)
                        DisplayDatalabels(label: dogBreedData.breedPopularity)
                    }.frame(maxWidth: 200, maxHeight: 350)
                }
            }

        }.background(Image("backgroundLines").resizable().frame(width: UIScreen.main.bounds.width, height: 1100))
    }
}


struct DisplayDatalabels: View {
    var label = ""
    var body: some View {
        VStack {
            Text(label)
                .font(.headline)
                .foregroundColor(.white)
                .padding(.leading, 10)
        }.padding()
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(dogBreedData: breeds[2])
    }
}
