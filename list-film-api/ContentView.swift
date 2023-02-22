//
//  ContentView.swift
//  list-film-api
//
//  Created by Muhammad David Kurniawan on 20/02/23.
//

import SwiftUI

struct ContentView: View {
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
                            VStack(alignment: .leading){
                                Image("poster")
                                    .resizable()
                                    .frame(width: 143, height: 212)
                                    .cornerRadius(8)
                                    .shadow(radius: 10)
                                Text("Spiderman: No Way Home")
                                    .padding(4)
                                    .font(.custom("Mulish-Medium", size: 14))
                                    .lineLimit(1)
                                HStack{
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.yellow)
                                    Text("9.1/10 IMDb")
                                        .font(.custom("Mulish-Light", size: 12))
                                }
                                
                            }
                            .frame(width: 143, height: 240)
                            VStack(alignment: .leading){
                                Image("poster")
                                    .resizable()
                                    .frame(width: 143, height: 212)
                                    .cornerRadius(8)
                                    .shadow(radius: 10)
                                Text("Spiderman: No Way Home")
                                    .padding(4)
                                    .font(.custom("Mulish-Medium", size: 14))
                                HStack{
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.yellow)
                                    Text("9.1/10 IMDb")
                                        .font(.custom("Mulish-Light", size: 12))
                                }
                            }
                            .frame(width: 143, height: 240)
                            VStack(alignment: .leading){
                                Image("poster")
                                    .resizable()
                                    .frame(width: 143, height: 212)
                                    .cornerRadius(8)
                                    .shadow(radius: 10)
                                Text("Spiderman: No Way Home")
                                    .padding(4)
                                    .font(.custom("Mulish-Medium", size: 14))
                                HStack{
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.yellow)
                                    Text("9.1/10 IMDb")
                                        .font(.custom("Mulish-Light", size: 12))
                                }
                            }
                            .frame(width: 143, height: 240)
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
                    VStack(alignment: .leading){
                        HStack{
                            Image("poster")
                                .resizable()
                                .frame(width: 143, height: 212)
                                .cornerRadius(8)
                                .shadow(radius: 10)
                            VStack(alignment: .leading, spacing: 10){
                                Text("Spiderman: No Way Home")
                                HStack{
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.yellow)
                                    Text("9.1/10 IMDb")
                                }
                            }
                        }
                    }
                    
                    Spacer()
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
