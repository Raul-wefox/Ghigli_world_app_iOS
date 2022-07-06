//
//  FilmListCloudDataSouerce.swift
//  Ghigil World
//
//  Created by Raul.Illan on 1/7/22.
//

import Foundation
import Combine

class FilmListCloudDataSource {
    
    static let filmListUrl = "/films"
    
    
    private let baseURLString: String
    private let session: URLSession
    
    init(baseUrl: String = ApiConstans.BaseUrl, session: URLSession = URLSession.shared) {
        self.baseURLString = baseUrl
        self.session = session
    }
    
    func getFilmList() -> AnyPublisher<[ServerFilmResponse], Error> {
        
        let apiManager = ApiManager(baseURL: baseURLString, session: session)
        
        let urlRequest = getfimlsEndpoint()
        
        return apiManager.performRequest(urlRequest: urlRequest)
        
    }
}

// MARK: - Endpoints

extension FilmListCloudDataSource {
    
    func getfimlsEndpoint()  -> URLRequest {
        
        let endpoint = "\(baseURLString)\(FilmListCloudDataSource.filmListUrl)"
        let components = URLComponents(string: endpoint)
        
        let urlRequest = URLRequest(url: (components?.url!)!)
        
        return urlRequest
    }
}
