//
//  MovieModel.swift
//  list-film-api
//
//  Created by Erlangga Anugrah Arifin on 22/02/23.
//

import Foundation

struct Movie: Codable, Hashable {
  var id: Int
  var nama: String
  var posterPath: String
}
