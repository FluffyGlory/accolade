//
//  accoladeApp.swift
//  accolade
//
//  Created by Leif MacCarthy on 6/17/24.
//

import SwiftUI
import SwiftData
import FirebaseCore
import FirebaseFirestore


class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
      FirebaseApp.configure()
    return true
  }
}
// Initialize database and get specific user info
let db = Firestore.firestore()
@main
struct accoladeApp: App {
    // register app delegate for Firebase setup
      @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
