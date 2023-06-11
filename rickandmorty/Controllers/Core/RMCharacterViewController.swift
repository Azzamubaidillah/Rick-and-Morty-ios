//
//  RMCharacterViewController.swift
//  rickandmorty
//
//  Created by Azzam Ubaidillah on 11/06/23.
//

import UIKit

/// Controller to show and search for characters
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        title = "Characters"
        
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
