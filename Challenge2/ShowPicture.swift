//
//  ShowPicture.swift
//  Challenge2
//
//  Created by Nadila Rizky Amelia on 21/04/26.
//

import SwiftUI

struct ShowPicture: View {
    var body: some View {
        Image(.chickenTeriyaki)
            .resizable()
            .scaledToFit()
    }
}

#Preview {
    ShowPicture()
}
