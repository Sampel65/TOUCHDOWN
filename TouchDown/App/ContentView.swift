//
//  ContentView.swift
//  TouchDown
//
//  Created by Sampel on 01/04/2023.
//

import SwiftUI

struct ContentView: View {

     //MARK-PROPERTIES
    @EnvironmentObject var shop : Shop
     //MARK-BODY
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing : 0) {
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack(spacing : 0) {
                            FeaturedTabView()
                                .frame(width: 410, height: 280, alignment: .center)
                                .padding(.vertical)
                            
                            CategoryGridView()
                            
                            TitleView(title: "Helmet")
                            
                            LazyVGrid(columns: gridLayout, spacing: 15, content: {
                                ForEach(products){ product in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            feedback.impactOccurred()
                                            withAnimation(.easeOut) {
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                            }
                                        }
                                }
                            })
                            .padding(15)
                                
                            TitleView(title: "Brands")
                            
                            BrandGridView()
                            
                            FooterView()
                                .padding(.horizontal )
                        
                        }
                    })
                }
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }

        }
        .ignoresSafeArea(.all, edges: .top)
    }
}
 //MARK-PREVIEW SECTION
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 Pro")
            .environmentObject(Shop())
    }
}
