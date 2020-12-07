//
//  ContentView.swift
//  H4KR
//
//  Created by Andres Alcaraz on 17/08/20.
//  Copyright © 2020 Andres Alcaraz. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject  var networkManager = NetworkManager()
    
    var body: some View {
        HStack {
            Spacer()
            NavigationView{
                List(networkManager.posts) { post in
                    NavigationLink(destination: DetailView(url: post.url)) {
                        HStack {
                            Text(String(post.points))
                            Text(post.title)
                        }
                        
                    }
                    
                    }
                .navigationBarTitle("H4CK3R NEWS ")
            }
            .onAppear {
                self.networkManager.fetchData()
            }
            Spacer()
        }.background(Color.black).edgesIgnoringSafeArea([.bottom])
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}



