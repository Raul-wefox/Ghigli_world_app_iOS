//
//  MapperFilmEntity.swift
//  Ghigil World
//
//  Created by Raul.Illan on 5/7/22.
//

import Foundation


extension ServerFilmResponse{
    
    func toModel() -> FilmModel {
        return FilmModel(
            id: self.id,
            title: self.title,
            image: self.image,
            movieBanner: self.movieBanner,
            description: self.description,
            director: self.director,
            releaseDate: self.releaseDate,
            rtScore: self.rtScore)
    }
}
