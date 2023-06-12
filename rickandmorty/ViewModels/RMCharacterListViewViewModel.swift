//
//  CharacterListViewViewModel.swift
//  rickandmorty
//
//  Created by Azzam Ubaidillah on 12/06/23.
//

import UIKit

final class RMCharacterListViewViewModel: NSObject {
    
    func fetchCharacters() {
        RMService.shared.execute(.listCharacterRequest, expecting: RMGetAllCharacterResponse.self) { result in
            
            switch result {
            case .success(let model):
                print("Total: " + String(model.info.count))
                print("Pages: " + String(model.info.pages))
                
            case .failure(let error):
                print(String(describing: error))
            }
             
        }
    }
}

extension RMCharacterListViewViewModel: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: RMCharacterCollectionViewCell.cellIdentifier,
            for: indexPath
        ) as? RMCharacterCollectionViewCell else {
            fatalError("Unsupported cell")
        }
        let viewModel = RMCharacterCollectionViewCellViewModel(
            characterName: "Azzam",
            characterStatus: "Alive",
            characterImageUrl: URL(string: "https://pbs.twimg.com/profile_images/1619625198205997056/0pCe9BZ4_400x400.jpg")
        )
        cell.configure(with: viewModel)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let bounds = UIScreen.main.bounds
        let width = (bounds.width - 30)/2
        return CGSize(
            width: width, height: width * 1.5
        )
    }
    
}
