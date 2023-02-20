//
//  ContentView.swift
//  BhagavadGita
//
//  Created by Sivaramaiah NAKKA on 12/02/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()

    var chapter = "1"

    var body: some View {
        VStack {
            VStack {
                Text("Bagavad_Gita_Title")
                Text("ContentView.Bagavad_Gita_Chapter")
                Text("ContentView.Bagavad_Gita_Chapter_\(chapter)")
            }
            .padding(.bottom)
            VStack {
                Text(L10n.bagavadGitaTitle)
                Text(L10n.ContentView.bagavadGitaChapter)
                Text(L10n.ContentView.bagavadGitaChapter(chapter))
            }
        }
        .onAppear {
//            let bgLogger: BGLoggerType = BGLogger()
//            bgLogger.debug("Debug Message")
//            bgLogger.error("Error Message")
            viewModel.onAppear()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
