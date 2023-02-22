//
//  API.swift
//  list-film-api
//
//  Created by Erlangga Anugrah Arifin on 22/02/23.
//

import Foundation
import Alamofire
import SwiftyJSON

class FetchData: ObservableObject {
  @Published var moviesData = [Movie]()
  var endpoint: String = ""
  
  init(endpoint: String) {
    var url = "https://api.themoviedb.org/3/movie/\(endpoint)?api_key=75a6dd0ad16baf57698a1da334b0e597&sort_by=popularity.desc&include_adult=false"
      
      print(url)
    AF.request(url).responseData { (dataTunggal) in
      let hasil = try! JSON (data: dataTunggal.data!)
      for i in hasil["results"] {
          
          self.moviesData.append(Movie(id: i.1["id"].intValue, nama: i.1["original_title"].stringValue, posterPath: i.1["poster_path"].stringValue, voteAverage: i.1["vote_average"].doubleValue, releaseDate: i.1["release_date"].stringValue, overview: i.1["overview"].stringValue))
      }
    }
  }
}
