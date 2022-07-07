//
//  HttpError.swift
//  Ghigil World
//
//  Created by Raul.Illan on 1/7/22.
//

import Foundation

enum HttpError: LocalizedError, Equatable {
    case invalidResponse
    case invalidStatusCode
}
