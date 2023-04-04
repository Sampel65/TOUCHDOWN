//
//  NavigationDetailsView.swift
//  TouchDown
//
//  Created by Sampel on 04/04/2023.
//

import SwiftUI

struct NavigationDetailsView: View {
    @EnvironmentObject var shop : Shop
    var body: some View {
        HStack{
            Button(action: {
                
                withAnimation(.easeIn) {
                    feedback.impactOccurred()
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            })
            
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            })
        }
    }
}

struct NavigationDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationDetailsView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
