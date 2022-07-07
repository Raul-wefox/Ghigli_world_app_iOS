//
//  FilmListCloudDataSouerce.swift
//  Ghigil World
//
//  Created by Raul.Illan on 1/7/22.
//

import Foundation
import Combine
import Alamofire

class FilmListCloudDataSource {
    
    static let filmListUrl = "/films"
    
    private let baseURLString: String
    
    init(baseUrl: String = ApiConstans.BaseUrl, session: URLSession = URLSession.shared) {
        self.baseURLString = baseUrl
    }
    
    func getFilmList() -> AnyPublisher<[ServerFilmResponse], Error> {
        
         let apiManager = ApiManager()
        
        return apiManager.performRequest(
            url: "\(baseURLString)\(FilmListCloudDataSource.filmListUrl)",
            method: .get)
    }
}
