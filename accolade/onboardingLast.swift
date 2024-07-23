//
//  onboardingLast.swift
//  accolade
//
//  Created by Leif MacCarthy on 7/23/24.
//

import SwiftUI

struct onboardingLast: View {
    
    var body: some View {
        VStack {
            Text("now, if accolade sounds like your style:")
            Button("i'm new") {
                // send user to signup view
                // push up im new to top when opening next view
                
            }
            Button("i'm back") {
                // log user in
            }
        }.font(Font.custom("Oxygen-Regular", size: 12))
    }
}

//#Preview {
//    onboardingLogin()
//}
