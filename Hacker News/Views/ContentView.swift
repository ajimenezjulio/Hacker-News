//
//  ContentView.swift
//  H4XOR News
//
//  Created by Aguilar, Julio on 10/28/19.
//  Copyright © 2019 Julio Cesar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
     @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("H4X0R NEWS")
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
