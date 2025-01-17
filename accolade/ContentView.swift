//
//  ContentView.swift
//  accolade
//
//  Created by Leif MacCarthy on 6/17/24.
//

import SwiftUI
import SwiftData
import FirebaseCore
import FirebaseFirestore

struct ContentView: View {
    init() {
            //Use this if NavigationBarTitle is with Large Font
            UINavigationBar.appearance().largeTitleTextAttributes = [.font : UIFont(name: "Oxygen-Bold", size: 36)!]
        
            //Use this if NavigationBarTitle is with displayMode = .inline
            //UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "Georgia-Bold", size: 20)!]
        
//            UITabBar.appearance().updateTextAttributes([.font : UIFont(name: "Oxygen-Regular", size: 24)!], for: .normal)
        }
    @State private var userName = ""
    var body: some View {
        TabView {
            NavigationStack {
                VStack {
                    Button("Name: " + userName) {
                        Task {
                            do {
                              let snapshot = try await db.collection("users").getDocuments()
                              for document in snapshot.documents {
                                print("\(document.documentID) => \(document.data())")
                                  userName =  document.data()["first"] as! String
                              }
                            } catch {
                              print("Error getting documents: \(error)")
                            }

                        }
                    }
                    postList()
                }.navigationTitle("accolade").font(Font.custom("Oxygen-Regular", size: 32))
            }.tabItem {Image(systemName: "house")
                Text("")}.tag(1)
            Text("Tab Content 2").tabItem {Image(systemName: "magnifyingglass")
                Text("") }.tag(2)
            Text("Tab Content 3").tabItem {Image(systemName: "person")
                Text("") }.tag(3)
        }.font(Font.custom("Oxygen-Regular", size: 4))
    }
}

#Preview {
    ContentView()
}
