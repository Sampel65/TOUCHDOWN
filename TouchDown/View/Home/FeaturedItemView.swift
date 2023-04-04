//
//  FeaturedImageView.swift
//  TouchDown
//
//  Created by Sampel on 01/04/2023.
//

import SwiftUI

struct FeaturedItemView: View {
     //MARK-Property
    let player : Player
    
     //MARK-Body
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct FeaturedImageView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
