//
//  LibraryModel.swift
//  Challenge2
//
//  Created by Nadila Rizky Amelia on 20/04/26.
//

import SwiftUI

struct ImageProperties: Identifiable {
    let id = UUID()
    var fileName: String
    var category: [String]
    var width: Int
    var height: Int
    var location: String
    var timeCreated: Date
}

let imageMock: [ImageProperties] = [
    ImageProperties(
        fileName: "chicken-teriyaki",
        category: ["Food"],
        width: 1920,
        height: 1080,
        location: "Jakarta",
        timeCreated: Date()
    ),
    ImageProperties(
        fileName: "chicken-teriyaki",
        category: ["Food"],
        width: 1920,
        height: 1080,
        location: "Jakarta",
        timeCreated: Date()
    ),
    ImageProperties(
        fileName: "chicken-teriyaki",
        category: ["Food"],
        width: 1920,
        height: 1080,
        location: "Jakarta",
        timeCreated: Date()
    ),
]
