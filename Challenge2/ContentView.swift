//
//  ContentView.swift
//  Challenge2
//
//  Created by Nadila Rizky Amelia on 20/04/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            AlbumView()
                .navigationTitle("Albums")
                .toolbar() {
                    ToolbarItem(){
                        Image(systemName: "arrow.uturn.backward.circle")
                    }
                    ToolbarSpacer()
                    ToolbarItem(){
                        Image(systemName: "plus.circle")
                    }
                }
                .toolbarTitleDisplayMode(.inlineLarge)
        }
    }
}

#Preview {
    ContentView()
}

