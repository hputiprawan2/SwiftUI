//
//  ContentView.swift
//  H4X0R News SwiftUI
//
//  Created by Hanna Putiprawan on 1/28/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager() // @ObservedObject is a listener, subscribe to the updates from NetworkManager
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { (post) in
                NavigationLink(destination: DetailView(url: post.url)) {
                        // Navigation Link is going to create a button on the right-hand side of each cell and triggers a presentation to the DetailView
                        HStack {
                            Text(String(post.points))
                            Text(post.title)
                    }
                }
            }
            .navigationTitle("H4X0R NEWS")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//let posts = [
//    Post(id: "1", title: "ABC"),
//    Post(id: "2", title: "DEF"),
//    Post(id: "3", title: "GHI")
//]
