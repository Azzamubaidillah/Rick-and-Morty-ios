//
//  RMCharacterDetailViewViewModel.swift
//  rickandmorty
//
//  Created by Azzam Ubaidillah on 12/06/23.
//

import Foundation

final class RMCharacterDetailViewViewModel {

    private let character: RMCharacter
    
    init(character: RMCharacter) {
        self.character = character
    }
    
    public var title: String {
        character.name.capitalized
    }
    
}
