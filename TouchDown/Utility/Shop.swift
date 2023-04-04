//
//  Shop.swift
//  TouchDown
//
//  Created by Sampel on 04/04/2023.
//

import Foundation

class Shop: ObservableObject  {
    
   @Published var showingProduct  : Bool = false
    @Published var selectedProduct : Product? = nil
}
