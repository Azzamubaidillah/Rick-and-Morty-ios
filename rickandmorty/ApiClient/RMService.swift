//
//  RMServices.swift
//  rickandmorty
//
//  Created by Azzam Ubaidillah on 11/06/23.
//

import Foundation

/// Primary API service object to get Rick and morty data
final class RMService {
    ///Shared singleton instance
    static let shared = RMService()
    
    /// privatilized constructor
    private init (){}
    
    /// send rick and morty api call
    /// - Parameters:
    ///     - Request: Request instance
    ///     - completion: Callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void){
        
    }
    
}
