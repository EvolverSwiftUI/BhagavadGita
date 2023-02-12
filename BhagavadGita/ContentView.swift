//
//  ContentView.swift
//  BhagavadGita
//
//  Created by Sivaramaiah NAKKA on 12/02/23.
//

import SwiftUI
import BGUtility

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
            .onAppear {
                let nums = [1,3,7,8]
                print(nums[safeindex: 0] ?? -1)
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
