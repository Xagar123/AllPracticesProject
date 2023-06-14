//
//  APICaller.swift
//  CombineInSwift
//
//  Created by Sagar Das on 15/02/23.
//

import Foundation
import Combine


class APICaller {
    
    static let shared = APICaller()
    
//    func fetchData(completion: [(String)] -> Void) {
//        // Here we are performing network call
//
//        completion(["Apple"])
//    }
    
    func fetchCompanies() -> Future<[String], Error>{
        
        return Future { promise in
            DispatchQueue.main.asyncAfter(deadline: .now()+3) {
                promise(.success(["Apple", "Google", "Microsoft","Facebook"]))
            }
            
        }
    }
    
    
}
