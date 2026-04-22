//
//  LibraryView.swift
//  CH2
//
//  Created by Az Zahra Azizah Hanum on 15/04/26.
//

import SwiftUI

struct LibraryView: View {
    let grids: [GridItem] = [GridItem(.adaptive(minimum: 80),spacing: 1)]
    @Binding var album: AlbumProp
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: grids, spacing: 1) {
                    ForEach(album.imageMock) { image in
                        NavigationLink {
                            ShowImage(pictureResource: image)
                        } label: {
                            Image(image.fileName)
                                .resizable()
                                .scaledToFill()
                                .frame(height: 120)
                                .clipped()
                        }
                    }
                }
            }
            .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName:"line.3.horizontal.decrease")
                }
                ToolbarSpacer(placement: .topBarTrailing)
                ToolbarItem(placement: .topBarTrailing) {
                    Text("Select")
                }
            }
        }
    }
}
//#Preview {
//    LibraryView(album: .constant(albumMock[0]))

