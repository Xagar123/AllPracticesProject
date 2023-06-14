//
//  OrderAttribute.swift
//  LiveActivity
//
//  Created by Sagar Das on 08/06/23.
//

import SwiftUI
import ActivityKit

struct OrderAttribute: ActivityAttributes {
   
    struct ContentState: Codable, Hashable {
        //MARK: -Live Activity Will Update its view when Content state is updated
        var status: Status = .received
    }
    //MARK: - Other Properties
    var orderNumber: Int
    var orderItem: String
}


//MARK: - Order Status

enum Status: String, CaseIterable,Codable,Equatable {
    
    case received = "shippingbox.fill"
    case progress = "person.bust"
    case ready = "takeoutbag.and.cup.and.straw.fill"
}
