//
//  FilmListScene.swift
//  Ghigil World
//
//  Created by Raul.Illan on 5/7/22.
//

import SwiftUI

struct FilmListView: View {
    
    @StateObject var viewModel: FilmsListViewModel
    
    var body: some View {
        
        VStack() {
            switch viewModel.status {
            case .idle:
                idleView()
            case .loading:
                loadingView()
            case .success:
                successView()
            case .error:
                errorView()
            }
        }.onAppear{
            viewModel.getFilmList()
        }
    }
    
    private func idleView() -> some View {
        Text("init staus")
    }
    
    private func successView() -> some View {
        ScrollView {
            ForEach(viewModel.filmList) { film in
                Text(film.title)
            }
        }
    }
    
    private func loadingView() -> some View {
        Text("Loading")
    }
    
    private func errorView() -> some View {
        Text("ERROR!!!!!!!!")
    }
}


struct FilmListView_Previews: PreviewProvider{
    
    static var previews: some View {
        FilmListView(viewModel: FilmsListViewModel())
    }
}
