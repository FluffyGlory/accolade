//
//  signup.swift
//  accolade
//
//  Created by Leif MacCarthy on 7/23/24.
//

import SwiftUI
import FirebaseAuth

struct signup: View {
    @State private var email = ""
    @State private var password = ""
    @State private var username = ""
    
    //not sure if i want these vars as state yet or not
    
    @State var handle: AuthStateDidChangeListenerHandle?
    
    var body: some View {
        VStack {
            Text("i'm new")
            Spacer()
            Text("what should we call you?")
            TextField("username", text: $username)
            Text("a good email to contact you at?")
            TextField("email", text: $email)
            // obviously cool animations here pushing password field up into view n shit
            Text("lastly, a secure password")
            SecureField("password", text: $password)
            // yet another sick animation pushing this field up
            Button("i'm ready") {
                
            }
            Text("awesome! looks like you're all set.")
            Spacer()
            
        }.onAppear {
            //            this could be a source of error bc documentation asks for viewWillAppear HOWEVER this isn't UIKit so *shrugs*
            self.handle = Auth.auth().addStateDidChangeListener { auth, user in
              // ...
            }
        }.onDisappear {
            // this similarly should be a viewWillDisappear but again this isn't UIKit
            if let handle = self.handle {
                Auth.auth().removeStateDidChangeListener(handle)
            }
        }
    }
}

//#Preview {
//    SwiftUIView()
//}
