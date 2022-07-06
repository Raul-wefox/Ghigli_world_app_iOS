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
            Text("init staus")
        }
        
        ScrollView {
            ForEach(viewModel.filmList) { film in
                Text(film.title)
            }
        }.onAppear{
            viewModel.getFilmList()
        }
    }
}
