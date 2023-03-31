//
//  DogBreedsApp.swift
//  DogBreeds
//
//  Created by Leandro Carvalho on 26/03/23.
//

import SwiftUI

@main
struct DogBreedsApp: App {
    var body: some Scene {
        WindowGroup {
            DetailView(dogBreedData: breeds[2])
        }
    }
}
