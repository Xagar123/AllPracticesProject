//
//  ContentView.swift
//  LiveActivity
//
//  Created by Sagar Das on 08/06/23.
//

import SwiftUI
import WidgetKit
import ActivityKit

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack{
                //MARK: -Intializing Activity
                Button("Start Activity") {
                    addLiveActivity()
                }
            }
            .navigationTitle("Live Activities")
            .padding(15)
        }
    }
    //Note :- We need to add key in Info.plist file
    func addLiveActivity() {
        let orderAttributes = OrderAttribute(orderNumber: 26383, orderItem: "Burger & Milk Shake")
        //Since its doesn't required any Initial Values
        //If your Content state Struct Contains Intialiers then you must pass it here
        let initialContentState = OrderAttribute.ContentState()
        
        do{
            let activiy = try Activity<OrderAttribute>.request(attributes: orderAttributes, contentState: initialContentState, pushType: nil)
            print("Activity added successfully and id: \(activiy.id)")
        }catch{
            print(error.localizedDescription)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
