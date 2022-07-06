//
//  FilmsRepository.swift
//  Ghigil World
//
//  Created by Raul.Illan on 5/7/22.
//

import Foundation
import Combine

protocol FilmsRepository {
    func getFilms() -> AnyPublisher<[ServerFilmResponse], Error>
}
