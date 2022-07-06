//
//  Ghigil_WorldApp.swift
//  Ghigil World
//
//  Created by Raul.Illan on 1/7/22.
//

import SwiftUI

@main
struct Ghigil_WorldApp: App {
    var body: some Scene {
        WindowGroup {
            FilmListView(viewModel: FilmsListViewModel())
        }
    }
}
