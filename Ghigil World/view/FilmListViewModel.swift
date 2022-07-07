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
    @Published public private(set) var status: ViewStates = .idle
    
    private var getFilmListUseCase: AnyCancellable?
    
    func getFilmList() {
        self.status = .loading
        getFilmListUseCase = GetFilmsUseCase().getFilmsList()
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                
                switch completion {
                case .finished:
                    break
                case .failure:
                    self.status = .error
                    break
                }
                
            }, receiveValue: { (filmList: [FilmModel]) in
                self.filmList = filmList
                self.status = .success
            })
    
    }
}
