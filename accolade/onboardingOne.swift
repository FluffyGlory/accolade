//
//  onboardingOne.swift
//  accolade
//
//  Created by Leif MacCarthy on 6/26/24.
//

import SwiftUI

struct onboardingOne: View {
    var body: some View {
        VStack {
            HStack {
                Text("accolade.").font(.custom("Oxygen-Bold", size: 64)).padding(.all)
                Spacer()
            }
            Spacer()
            // actually, fade this in too, make it shove accolade up to the top. we'll do the same thing when we launch the app; start the launch screen with accolade in the middle and throw it to the top left
            Text("we're sick of the toxic, addictive, data-grabbing freeware that we call social media.").padding(.all).font(.custom("Oxygen-Bold", size: 16))
            Spacer()
            // fade this lower piece of text in from the bottom
            Text("and we know you are too.").padding(.all).font(.custom("Oxygen-Bold", size: 16))
            Spacer()
        }
    }
}

#Preview {
    onboardingOne()
}
