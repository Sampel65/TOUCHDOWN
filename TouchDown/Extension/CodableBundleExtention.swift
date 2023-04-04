//
//  CodableBundleExtention.swift
//  TouchDown
//
//  Created by Sampel on 01/04/2023.
//

import Foundation

extension Bundle {
    func decode<T :Codable> (_ file :String) -> T  {
         // 1. locate the jsonfile
        guard let url = self.url(forResource: file, withExtension: nil) else {
             fatalError("failed to locate \(file) in  bundle.")
        }
        
         //  2. Create a property for the data
        
        guard let data = try? Data (contentsOf: url) else {
            fatalError("Failed to laod \(file) from bundle")
        }
         //  3. create a decoder
        let decoder = JSONDecoder()
        
         //  4. create a property for the decoded data
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }
        
        //5.Return the ready to use data
        return decodedData
    }
}
