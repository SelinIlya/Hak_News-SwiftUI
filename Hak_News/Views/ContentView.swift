//
//  ContentView.swift
//  Hak_News
//
//  Created by Ilya Selin on 16.03.2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManaeger = NetworkManager()
    
    var body: some View {
        NavigationView { List (networkManaeger.posts){ post in
            NavigationLink(destination: DetailView(url: post.url)) { //ссылка на пост в DetailView
                HStack {
                    Text(String(post.points))
                    Text(post.title)
                }
            }
        }
        .navigationTitle("Haker News")
        }
        .onAppear { // Добавляет действие для выполнения при появлении этого представления.
            self.networkManaeger.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "LOL"),
//    Post(id: "3", title: "Goblin")
//]
