//
//  RMEndpoint.swift
//  rickandmorty
//
//  Created by Azzam Ubaidillah on 11/06/23.
//

import Foundation

/// Represents unique API endpoint
@frozen enum RMEndpoint: String {
    /// Endpoint to get character info etc.
    case character
    case location
    case episode
    
}
