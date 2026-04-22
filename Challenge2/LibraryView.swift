//
//  LibraryView.swift
//  Challenge2
//
//  Created by Nadila Rizky Amelia on 20/04/26.
//

import SwiftUI

struct LibraryView: View {
    let grids: [GridItem] = [GridItem(.adaptive(minimum: 100), spacing: 1)]
    @Binding var album: AlbumModel
    var body: some View {
        ScrollView {
            LazyVGrid(columns: grids, spacing: 1) {
                ForEach($album.images, id: \.self) { $image in
                    NavigationLink {
                        ShowPicture()
                    } label: {
                        Image(image)
                            .resizable()
                            .aspectRatio(1, contentMode: .fill)
                            .clipped()
                    }
                }
            }
        }
    }
}

//#Preview {
//    LibraryView()
//}
