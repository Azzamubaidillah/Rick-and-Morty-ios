//
//  RMCharacterDetailView.swift
//  rickandmorty
//
//  Created by Azzam Ubaidillah on 12/06/23.
//

import UIKit

/// View for single character info
final class RMCharacterDetailView: UIView {
    
    private var collectioView: UICollectionView?
    
    private let spinner: UIActivityIndicatorView = {
        let spinner = UIActivityIndicatorView(style: .large)
        spinner.hidesWhenStopped = true
        spinner.translatesAutoresizingMaskIntoConstraints = false
        return spinner
    }()
    
    // MARK: - Init

    override init(frame: CGRect) {
        super .init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .systemPurple
        let collectionView = createCollectionView()
        self.collectioView = collectionView
        addSubviews(collectionView, spinner)
        addConstraints()
    }
    
    required init(coder: NSCoder) {
        fatalError("Unsupported")
    }
    
    private func addConstraints(){
        guard let collectionView = collectioView else {
            return
        }
        
        NSLayoutConstraint.activate([
            spinner.widthAnchor.constraint(equalToConstant: 100),
            spinner.heightAnchor.constraint(equalToConstant: 100),
            spinner.centerXAnchor.constraint(equalTo: centerXAnchor),
            spinner.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            collectionView.topAnchor.constraint(equalTo: topAnchor),
            collectionView.leftAnchor.constraint(equalTo: leftAnchor),
            collectionView.rightAnchor.constraint(equalTo: rightAnchor),
            collectionView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
    private func createCollectionView() -> UICollectionView {
        let layout = UICollectionViewCompositionalLayout { sectionIndex, _ in
            return self.createCollectionView(for: sectionIndex)
        }
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(UICollectionView.self, forCellWithReuseIdentifier: "cell")
        return collectionView
    }
    
    private func createSection(for sectionIndex: Int) -> NSCollectionLayoutSection {
        
    }
    

}
