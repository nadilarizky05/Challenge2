//
//  Model.swift
//  CH2
//
//  Created by Az Zahra Azizah Hanum on 21/04/26.
//

import SwiftUI
import UniformTypeIdentifiers
//import Foundation

struct AlbumProp: Identifiable {
    let id = UUID()
    let albumName: String
    var location: String
    var timeCreated: Date
    var projectType: String
    var numberOfPhotos: Int
    var imageMock: [ImageProp]
}

struct ImageProp: Identifiable, Codable, Transferable {
    static var transferRepresentation: some TransferRepresentation {
        CodableRepresentation(contentType: .data)
    }
    
    let id = UUID()
    let fileName: String
    var location: String
    var timeCreated: Date
    var width: Int
    var height: Int
    }
 
//#Preview {
//    Model()
//}
