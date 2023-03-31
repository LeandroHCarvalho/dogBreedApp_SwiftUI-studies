//
//  ListView.swift
//  DogBreeds
//
//  Created by Leandro Carvalho on 31/03/23.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationView {
            List(breeds) {
                breed in
                NavigationLink(destination: DetailView(dogBreedData: breed)) {
                    RowView(breedData: breed)
                }
            }
            .navigationTitle(Text("Breeds"))
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
