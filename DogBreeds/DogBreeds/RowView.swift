//
//  RowView.swift
//  DogBreeds
//
//  Created by Leandro Carvalho on 31/03/23.
//

import SwiftUI

struct RowView: View {
    
    var breedData: BreedData
    
    var body: some View {
        HStack {
            Image(breedData.imageName).resizable()
                .frame(width: 70, height: 54)
                .scaledToFit()
                .clipShape(Rectangle())
                .padding(2)
            
            VStack(alignment: .leading) {
                Text(breedData.breed)
                 .font(.system(size: 15))
                 .fontWeight(.bold)
                
                Text(breedData.description)
                .lineLimit(2)
                .font(.system(size: 13))
                .lineSpacing(2)
                .frame(height: 35)
            }.frame(width: 250, height: 70)
        }
        
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(breedData: breeds[2]).previewLayout(.sizeThatFits)
    }
}
