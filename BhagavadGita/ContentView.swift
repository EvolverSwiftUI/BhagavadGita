//
//  ContentView.swift
//  BhagavadGita
//
//  Created by Sivaramaiah NAKKA on 12/02/23.
//

import SwiftUI

struct ContentView: View {

    @StateObject var viewModel = ContentViewModel()

    var count = "1"

    var body: some View {
        VStack {
            Text("Bagavad_Gita")
            Text("ContentView.Bagavad_Gita_Chapter")
            Text("ContentView.Bagavad_Gita_Chapter_\(count)")
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
