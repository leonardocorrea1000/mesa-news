//
//  APIBase.swift
//  mesa-news
//
//  Created by Jose Correa on 12/01/21.
//

import Foundation

class APIBase {
    static let baseUrl = "https://mesa-news-api.herokuapp.com"
    static let imageUrl = "https://image.tmdb.org/t/p/w200"
    static let apiKey = "c5850ed73901b8d268d0898a8a9d8bff"
    static let keyQuery = "?api_key=\(apiKey)"
    
    static let upcomingMovies = "/movie/upcoming"
    static let genresList = "/genre/movie/list"

}
