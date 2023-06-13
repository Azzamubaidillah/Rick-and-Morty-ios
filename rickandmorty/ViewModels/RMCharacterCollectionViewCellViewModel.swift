//
//  RMCharacterCollectionViewCellViewModel.swift
//  rickandmorty
//
//  Created by Azzam Ubaidillah on 12/06/23.
//

import Foundation

final class RMCharacterCollectionViewCellViewModel: Hashable, Equatable {
    
    public let characterName: String
    public let characterStatus: String
    private let characterImageUrl: URL?
    
    // MARK: - init
    
    init(
        characterName: String,
        characterStatus: String,
        characterImageUrl: URL?
    ) {
        self.characterName = characterName
        self.characterStatus = "Status: \(characterStatus)"
        self.characterImageUrl = characterImageUrl
    }

    public func fetchImage(completion: @escaping (Result<Data, Error>) -> Void) {
        // TODO: Abstrach to imageManager
        guard let url = characterImageUrl else {
            completion(.failure(URLError(.badURL)))
            return
        }
        RMImageLoader.shared.downloadImage(url, completion: completion)
    }
    
    // MARK: - Hashable
    
    static func == (lhs: RMCharacterCollectionViewCellViewModel, rhs: RMCharacterCollectionViewCellViewModel) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(characterName)
        hasher.combine(characterStatus)
        hasher.combine(characterImageUrl)
    }
    
}
