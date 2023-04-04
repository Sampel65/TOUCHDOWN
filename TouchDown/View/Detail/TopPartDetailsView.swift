//
//  TopPartDetailsView.swift
//  TouchDown
//
//  Created by Sampel on 04/04/2023.
//

import SwiftUI

struct TopPartDetailsView: View {
    @EnvironmentObject var shop  : Shop
    
    @State private var isAminating : Bool = false
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            //PRICE
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ??
                     sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)

            }).offset(y: isAminating ? -50 : -75)
            
            Spacer()
            //PHOTO
            Image(shop.selectedProduct?.image ??   sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y : isAminating ? 0  : -35 )
                
            
            
        })
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)) {
                isAminating.toggle()
            }
        })
    }
}

struct TopPartDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailsView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
