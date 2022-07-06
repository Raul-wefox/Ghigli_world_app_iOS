//
//  FilmListViewModel.swift
//  Ghigil World
//
//  Created by Raul.Illan on 5/7/22.
//

import Foundation
import Combine

class FilmsListViewModel: ObservableObject {
    
    @Published public private(set) var filmList: [FilmModel] = []
    @Published public private(set) var status = false
    
    private var getFilmListUseCase: AnyCancellable?
    
    func getFilmList() {
        
        getFilmListUseCase = GetFilmsUseCase().getFilmsList()
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                
                self.status = true
                
                switch completion {
                case .finished:
                    break
                case .failure:
                    break
                }
                
            }, receiveValue: { (filmList: [FilmModel]) in
                self.filmList = filmList
            })
    
    }

}
