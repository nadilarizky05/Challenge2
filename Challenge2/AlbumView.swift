//
//  AlbumView.swift
//  Challenge2
//
//  Created by Nadila Rizky Amelia on 21/04/26.
//

import SwiftUI

struct AlbumView: View {
    
    //info seluruh nama-nama foto yang ada dan ingin di drag & drop
    @State private var images: [String] = ["es-buah", "chicken-teriyaki"]
    
    //untuk membuat foto muncul selalu dipaling atas
    var topIndex: Int {
        images.count - 1
    }
    
    //untuk nama-nama album foto yang ada
    @State var albums: [AlbumModel] = [
        AlbumModel(image: .emptyAlbum,  title: "Food", images: []),
        AlbumModel(image: .emptyAlbum,  title: "Ice", images: []),
        AlbumModel(image: .emptyAlbum,  title: "Nasi Padang", images: []),
        AlbumModel(image: .emptyAlbum,  title: "Food", images: []),
        AlbumModel(image: .emptyAlbum,  title: "Food", images: []),
        AlbumModel(image: .emptyAlbum,  title: "Ice", images: []),
        AlbumModel(image: .emptyAlbum,  title: "Nasi Padang", images: []),
        AlbumModel(image: .emptyAlbum,  title: "Food", images: []),
    ]

    var body: some View {
        //Ada proses step by step masuk ke dalam dan makin dalam, jadinya pakai navigation stack
        NavigationStack{
            
            //buat ngebelah, kalau konten nya dibagi sejajar kesamping
            HStack{
                VStack{
                    //konten 1, sebelah kiri, dibuat bertumpuk, karena ada tumpukan foto
                    ZStack{
                        //perulangannya pakai index (bukan array) karena butuh info index untuk posisi foto
                        ForEach(images.indices, id: \.self) { index in
                            Image(images[index])
                                    .resizable() //ngasih tau biar ukurannya bisa diubah-ubah
                                    .frame(width: 200, height: 200) //nih bisa diatur ukuran fotonya
                                    .clipShape(RoundedRectangle(cornerRadius: 10)) //semacam border radius
                                    .aspectRatio(0.8, contentMode: .fill) //supaya ukuran fotonya pas semua, misal 1:1
                                    
                            
                                    //disini aku butuh info index buat ngecek, kalau indexnya 0 (paling atas) maka posisinya agak turun ke kanan
                                    .padding(.top, index == 0 ? 0 : CGFloat(index) * 20)
                                    .padding(.leading, index == 0 ? 0 : CGFloat(index) * 20)
                            
                                    .zIndex(Double(index))
                                    .draggable(images[index])
                            }
                    }
                    .padding()
                    .zIndex(1)
                    
                    //konten 1, sebelah kiri, dibuat bertumpuk, karena ada tumpukan foto
                    ZStack{
                        //perulangannya pakai index (bukan array) karena butuh info index untuk posisi foto
                        ForEach(images.indices, id: \.self) { index in
                            Image(images[index])
                                    .resizable() //ngasih tau biar ukurannya bisa diubah-ubah
                                    .frame(width: 200, height: 200) //nih bisa diatur ukuran fotonya
                                    .clipShape(RoundedRectangle(cornerRadius: 10)) //semacam border radius
                                    .aspectRatio(0.8, contentMode: .fill) //supaya ukuran fotonya pas semua, misal 1:1
                                    
                            
                                    //disini aku butuh info index buat ngecek, kalau indexnya 0 (paling atas) maka posisinya agak turun ke kanan
                                    .padding(.top, index == 0 ? 0 : CGFloat(index) * 20)
                                    .padding(.leading, index == 0 ? 0 : CGFloat(index) * 20)
                            
                                    .zIndex(Double(index))
                                    .draggable(images[index])
                            }
                    }
                    .padding()
                    .zIndex(1)
                }
                
                
                VStack {
                    ScrollView {
                        LazyVGrid (columns: [GridItem(.flexible())], spacing: 20) {
                            ForEach($albums) { $album in
                                NavigationLink {
                                    LibraryView(album: $album)
                                } label : {
                                    ZStack(alignment: .bottomLeading){
                                        Image(album.image)
                                            .resizable()
                                            .clipShape(RoundedRectangle(cornerRadius: 10))
                                            .aspectRatio(1, contentMode: .fill)
                                            .frame(width: 120, height: 120)
                                            .padding(.trailing, 20)
                                        Text(album.title)
                                            .foregroundColor(Color.white)
                                            .bold()
                                            .font(.system(size: 15, weight: .bold))
                                            .padding(.leading, 10)
                                            .padding(.bottom, 5)
                                    }
                        
                                }
                                .dropDestination(for: String.self) { items, _ in
                                    for item in items {
                                        album.images.append(item)
                                        images.removeAll(where: { $0 == item })
                             
                                    }
                                    return true
                                }
                            }
                        }
                        
                    }
                    Spacer()
                }
            }
            .padding(.horizontal, 100)
        }
    }
}

#Preview {
    AlbumView()
}
