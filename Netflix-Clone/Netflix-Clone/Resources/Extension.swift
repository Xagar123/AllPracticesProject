//
//  Extension.swift
//  Netflix-Clone
//
//  Created by Sagar Das on 31/03/23.
//

import Foundation

extension String {
     
    func capitalizeFirstLeter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
