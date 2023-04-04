//
//  ProductDetailView.swift
//  TouchDown
//
//  Created by Sampel on 04/04/2023.
//

import SwiftUI

struct ProductDetailView: View {
    @EnvironmentObject var shop : Shop
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            //NARBAR
            NavigationDetailsView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            //HEADER
            HeaderView()
                .padding(.horizontal)
            
            //DETAILS TOP PART
            
            TopPartDetailsView()
                .padding(.horizontal)
                .zIndex(1)
            //DETAILS BOTTOM PART
            VStack(alignment: .center, spacing: 0, content: {
                
                RatingSizesDetailsView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
            
            //RATING + SIZES
            //DESCRIPTION
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(shop.selectedProduct?.description ??  sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                })
                
            //QUANTITY + FAVOURITE
                QuantityFavoriteDetailView()
                    .padding(.vertical, 10)
            // ADD TO CART
            AddToCartView()
                    .padding(.bottom, 20)
            Spacer()
            })
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShapes())
                    .padding(.top, -105)
                
            
            )
        })
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red:shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue:shop.selectedProduct?.blue ?? sampleProduct.blue
            ).ignoresSafeArea(.all, edges: .all)
        )
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
