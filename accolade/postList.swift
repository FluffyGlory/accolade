//
//  postList.swift
//  accolade
//
//  Created by Leif MacCarthy on 6/20/24.
//

import SwiftUI

struct postList: View {
    var body: some View {
            ScrollView {
                // for each post in the database, make an entry listed from furthest back to most recent
                examplePost()
                examplePost()
                examplePost()
                examplePost()
                examplePost()
                examplePost()
        }
    }
}

#Preview {
    postList()
}
