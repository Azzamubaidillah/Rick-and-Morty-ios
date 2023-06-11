// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let rMLocation = try? JSONDecoder().decode(RMLocation.self, from: jsonData)

import Foundation

// MARK: - RMLocation
struct RMLocation: Codable {
    let id: Int
    let name, type, dimension: String
    let residents: [String]
    let url: String
    let created: String
}
