//
//  FilmResponse.swift
//  Ghigil World
//
//  Created by Raul.Illan on 1/7/22.
//

import Foundation

public struct ServerFilmResponse: Codable {
    let id: String
    let title: String
    let image: String
    let movieBanner: String
    let description: String
    let director: String
    let releaseDate: String
    let rtScore: String
    let people: [String]
    let species: [String]
    let locations: [String]
    let vehicles: [String]
}
