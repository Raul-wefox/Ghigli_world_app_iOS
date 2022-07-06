//
//  GetFilmsUseCase.swift
//  Ghigil World
//
//  Created by Raul.Illan on 5/7/22.
//

import Foundation
import Combine

class GetFilmsUseCase {
    
    let filmsRpository: FilmsRepository
    
    init(filmsRpository: FilmsRepository = FilmRepositoryImpl()) {
        self.filmsRpository = filmsRpository
    }
    
    func getFilmsList() -> AnyPublisher<[FilmModel], Error> {
       return filmsRpository.getFilms().map { serverFilmListResponse -> [FilmModel] in
            
           return serverFilmListResponse.map { serverFilmResponse -> FilmModel in
               serverFilmResponse.toModel()
           }
        }
       .mapError({ $0 })
       .eraseToAnyPublisher()
    }
    
}
