//
//  Helper.swift
//  Beneficiary Details
//
//  Created by shahadmufleh on 20/01/2022.
//


import UIKit
import Foundation
extension Bundle {
  func decodeJson <T:Decodable> (_ type : T.Type , fileName : String,
     dateDecodingStrategy: JSONDecoder.DateDecodingStrategy = .deferredToDate,
     keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy = .useDefaultKeys) -> T {
        
     guard let url = self.url(forResource: fileName, withExtension: nil) else {
         fatalError("Failed to load file ")
     }
        
     do {
        let jsonData = try Data(contentsOf: url)
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = dateDecodingStrategy
        decoder.keyDecodingStrategy = keyDecodingStrategy
            
        let result = try decoder.decode(type, from: jsonData)
        return result
     }
     catch {
        fatalError("err:\(error)")
     }
  }
}

