//
//  CategoryModel.swift
//  TouchDown
//
//  Created by Sampel on 01/04/2023.
//

import Foundation
import SwiftUI

struct Category : Codable, Identifiable {
    let id : Int
    let name : String
    let image : String
}
