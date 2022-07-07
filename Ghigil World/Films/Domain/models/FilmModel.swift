//
//  FilmModel.swift
//  Ghigil World
//
//  Created by Raul.Illan on 5/7/22.
//

import Foundation

public struct FilmModel : Identifiable {
    public let id: String
    let title: String
    let image: String
    let movieBanner: String
    let description: String
    let director: String
    let releaseDate: String
    let rtScore: String
}
