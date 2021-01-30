//
//  NetworkManager.swift
//  H4X0R News SwiftUI
//
//  Created by Hanna Putiprawan on 1/29/21.
//

import Foundation

// ObservableObject broadcasts properties
class NetworkManager: ObservableObject {
    
    @Published var posts = [Post]() // @Published broadcast when content's changed
    
    func fetchData() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let result = try decoder.decode(Result.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = result.hits
                            }
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume() // start networking task
        }
    }
}
