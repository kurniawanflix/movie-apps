//
//  list_film_apiApp.swift
//  list-film-api
//
//  Created by Muhammad David Kurniawan on 20/02/23.
//

import SwiftUI

@main
struct list_film_apiApp: App {
    var body: some Scene {
        WindowGroup {
            TabView{
                ContentView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                Text("Ticket View")
                    .tabItem{
                        Image(systemName: "ticket")
                        Text("Ticket")
                    }
                Text("Saved View")
                    .tabItem{
                        Image(systemName: "bookmark")
                        Text("Saved")
                    }
            }
            .background(Color.white)
        }
    }
}
