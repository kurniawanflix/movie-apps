//
//  ContentView.swift
//  list-film-api
//
//  Created by Muhammad David Kurniawan on 20/02/23.
//

import SwiftUI
import SDWebImageSwiftUI

struct ContentView: View {
    
    @ObservedObject var nowPlaying = FetchData(endpoint: "now_playing")
    @ObservedObject var Popular = FetchData(endpoint: "popular")
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical){
                VStack{
                    HStack{
                        Text("Now Showing")
                            .padding()
                            .font(.custom("Merriweather-Black", size: 16))
                        Spacer()
                        NavigationLink {
                            EmptyView()
                        } label: {
                            Text("See more")
                                .padding()
                                .font(.custom("Mulish-Light", size: 12))
                                .foregroundColor(.secondary)
                                .frame(height: 25)
                                .background(RoundedRectangle(cornerRadius: 100)
                                    .stroke(Color.secondary))
                                .padding()
                        }
                    }
                    .padding(.top, 10)
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 20){
                            ForEach(nowPlaying.moviesData, id: \.self) { dataTunggal in
                                VStack(alignment: .leading){
                                    WebImage(url: URL(string: "https://image.tmdb.org/t/p/original/\(dataTunggal.posterPath)"))
                                        .resizable()
                                        .frame(width: 143, height: 212)
                                        .cornerRadius(8)
                                        .shadow(radius: 10)
                                    Text("\(dataTunggal.nama)")
                                        .padding(4)
                                        .font(.custom("Mulish-Medium", size: 14))
                                        .lineLimit(1)
                                    HStack{
                                        Image(systemName: "star.fill")
                                            .foregroundColor(.yellow)
                                            .frame(width: 12, height: 12)
                                        Text("\(dataTunggal.voteAverage.formatted())/10 IMDb")
                                            .font(.custom("Mulish-Light", size: 12))
                                    }
                                    
                                }
                                .frame(width: 143, height: 240)
                            }
                        }
                        .padding()
                        .padding(.bottom, 20)
                    }
                    HStack{
                        Text("Popular")
                            .padding()
                            .font(.custom("Merriweather-Black", size: 16))
                        Spacer()
                        NavigationLink {
                            EmptyView()
                        } label: {
                            Text("See more")
                                .padding()
                                .font(.custom("Mulish-Light", size: 12))
                                .foregroundColor(.secondary)
                                .frame(height: 25)
                                .background(RoundedRectangle(cornerRadius: 100)
                                    .stroke(Color.secondary))
                                .padding()
                        }
                    }
                    VStack{
                        ForEach(Popular.moviesData, id: \.self) { dataTunggal in
                            HStack(spacing: 20){
                                WebImage(url: URL(string: "https://image.tmdb.org/t/p/original/\(dataTunggal.posterPath)"))
                                    .resizable()
                                    .frame(width: 85, height: 128)
                                    .cornerRadius(5)
                                    .shadow(radius: 4)
                                VStack(alignment: .leading, spacing: 12){
                                    Text("\(dataTunggal.nama)")
                                        .font(.custom("Mulish-Medium", size: 14))
                                    HStack{
                                        Image(systemName: "star.fill")
                                            .foregroundColor(.yellow)
                                        Text("\(dataTunggal.voteAverage.formatted())/10 IMDb")
                                            .font(.custom("Mulish-Light", size: 12))
                                            .foregroundColor(.secondary)
                                    }
                                    Text("\(dataTunggal.overview)")
                                        .lineLimit(2)
                                        .font(.custom("Mulish-Light", size: 12))
                                    HStack{
                                        Image(systemName: "calendar.badge.clock")
                                        Text("\(dataTunggal.releaseDate)")
                                            .font(.custom("Mulish-Light", size: 12))
                                    }
                                }
                                Spacer()
                            }
                            .padding()
                        }
                        Spacer()
                    }
                }
                .navigationBarTitleDisplayMode(.inline)
                .toolbar{
                    ToolbarItem(placement: .principal){
                        HStack{
                            Image(systemName: "line.3.horizontal.decrease")
                            Spacer()
                            Text("Filmku")
                                .font(.custom("Merriweather-Black", size: 16))
                            Spacer()
                            Image(systemName: "bell.badge")
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
