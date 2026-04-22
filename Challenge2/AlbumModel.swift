//
//  AlbumModel.swift
//  Challenge2
//
//  Created by Nadila Rizky Amelia on 21/04/26.
//

import SwiftUI

struct AlbumModel: Identifiable {
    var id = UUID()
    var image: ImageResource
    var title: String
    var images: [String]
}


