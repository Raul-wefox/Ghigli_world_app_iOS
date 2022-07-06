//
//  FilmsRepositoryImpl.swift
//  Ghigil World
//
//  Created by Raul.Illan on 5/7/22.
//

import Foundation
import Combine

class FilmRepositoryImpl: FilmsRepository {
    
    private let filmListCloudDataSouerce: FilmListCloudDataSource
    
    init(filmListCloudDataSouerce: FilmListCloudDataSource = FilmListCloudDataSource()) {
        self.filmListCloudDataSouerce = filmListCloudDataSouerce
    }
    
    func getFilms() -> AnyPublisher<[ServerFilmResponse], Error> {
        return filmListCloudDataSouerce.getFilmList()
    }
}
