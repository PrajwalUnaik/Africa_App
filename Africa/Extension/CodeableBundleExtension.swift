//
//  CodeableBundleExtension.swift
//  Africa
//
//  Created by Prajwal U on 27/12/23.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        
        //Locate the JSon file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("failed to locate \(file) in bundle.")
        }
        
        
        // create the new property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("failed to load \(file) from bundle.")
        }
        
        //create a decode
        let decoder = JSONDecoder()
        
        //create a property for the decoded data
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("failed to decode \(file) from bundle.")
        }
        
        //return the data into the new property -> ready to use data
        return loaded
        
    }
}
