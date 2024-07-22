//
//  examplePost.swift
//  accolade
//
//  Created by Leif MacCarthy on 6/26/24.
//

import SwiftUI

struct examplePost: View {
    @State var heartColor = Color(.black);
    @State var heartType = "heart";
    var body: some View {
        VStack {
            // Border around whole vstack
            HStack {
                // profile picture, make it a circle
                Image("IMG_0771")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 37.5, height: 37.5).clipShape(Circle())
                Text("leif").padding(.trailing)
                Spacer()
            }
            // Bar goes here
            // Post content goes here
            Text("Hyped rn. Just landed my first client and excited for the future.").font(.custom("Oxygen-Regular", size: 18)).padding(.all).textCase(.lowercase)
            HStack {
                Image(systemName: heartType)
                    .foregroundStyle(heartColor)
                    .font(.custom("Oxygen-Regular", size: 18))
                    .padding(.leading)
                    .onTapGesture {
                    if heartColor == Color(.red) {
                        heartColor = Color(.black)
                        heartType = "heart"
                    }
                    else if heartColor == Color(.black) {
                        heartColor = Color(.red)
                        heartType = "heart.fill"
                    }
                }
                Spacer()
                
            }
        }.padding(.all).font(.custom("Oxygen-Regular", size: 14))
    }
}

#Preview {
    examplePost()
}
