//
//  ContentView.swift
//  BhagavadGita
//
//  Created by Sivaramaiah NAKKA on 12/02/23.
//

import SwiftUI

struct ContentView: View {

    @StateObject var viewModel = ContentViewModel()

    var body: some View {
        Text("Hello, World!")
            .onAppear {
//                let bgLogger: BGLoggerType = BGLogger()
//                bgLogger.debug("Debug Message")
//                bgLogger.error("Error Message")
                viewModel.onAppear()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
