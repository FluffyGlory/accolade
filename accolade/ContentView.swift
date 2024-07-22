//
//  ContentView.swift
//  accolade
//
//  Created by Leif MacCarthy on 6/17/24.
//

import SwiftUI
import SwiftData


struct ContentView: View {
    init() {
            //Use this if NavigationBarTitle is with Large Font
            UINavigationBar.appearance().largeTitleTextAttributes = [.font : UIFont(name: "Oxygen-Bold", size: 36)!]
        
            //Use this if NavigationBarTitle is with displayMode = .inline
            //UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "Georgia-Bold", size: 20)!]
        
//            UITabBar.appearance().updateTextAttributes([.font : UIFont(name: "Oxygen-Regular", size: 24)!], for: .normal)
        }
    var body: some View {
        TabView {
            NavigationStack {
                VStack {
                    postList()
                }.navigationTitle("accolade").font(Font.custom("Oxygen-Regular", size: 32))
            }.tabItem {Image(systemName: "house")
                Text("home")}.tag(1)
            Text("Tab Content 2").tabItem {Image(systemName: "magnifyingglass")
                Text("Search") }.tag(2)
            Text("Tab Content 3").tabItem {Image(systemName: "person")
                Text("you") }.tag(3)
        }.font(Font.custom("Oxygen-Regular", size: 4))
    }
}

#Preview {
    ContentView()
}
