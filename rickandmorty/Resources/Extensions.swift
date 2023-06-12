//
//  Extensions.swift
//  rickandmorty
//
//  Created by Azzam Ubaidillah on 12/06/23.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
