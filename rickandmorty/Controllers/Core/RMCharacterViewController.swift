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
        
        let request = RMRequest(
            endpoint: .character,
            queryParameters: [
                URLQueryItem(name: "name", value: "rick"),
                URLQueryItem(name: "status", value: "alive")
            ]
        )
        
        RMService.shared.execute(request,
                                 expecting: RMCharacter.self){ result in
            
        }
    }
}
