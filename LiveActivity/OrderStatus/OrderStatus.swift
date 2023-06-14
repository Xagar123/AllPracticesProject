//
//  OrderStatus.swift
//  OrderStatus
//
//  Created by Sagar Das on 08/06/23.
//

import WidgetKit
import SwiftUI
import Intents

//
//struct OrderStatus: Widget {
//    var body: some WidgetConfiguration {
//        ActivityConfiguration(for: OrderAttribute.self) { contex in
//            //MARK: - LIVE ACTIVITY VIEW
//
//            //Note:- Live activity max height is 220 pixel
//            ZStack{
//                RoundedRectangle(cornerRadius: 15, style: .continuous)
//                    .fill(Color("Green").gradient)
//
//                //MARK: - Order status UI
//                VStack {
//                    HStack {
//                        Image("logo")
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .frame(width: 40, height: 40)
//
//                        Text("In Store pickup")
//                            .foregroundColor(.white.opacity(0.6))
//                            .frame(maxWidth: .infinity,alignment: .leading)
//
//                        HStack(spacing: -2) {
//                            ForEach(["Burger","Shake"],id: \.self){ image in
//                                Image(image)
//                                    .resizable()
//                                    .aspectRatio(contentMode: .fit)
//                                    .frame(width: 30,height: 30)
//                                    .background {
//                                        Circle()
//                                            .fill(Color("Green"))
//                                            .padding(-2)
//                                    }
//                                    .background {
//                                        Circle()
//                                            .stroke(.white, lineWidth: 1.5)
//                                            .padding(-2)
//                                    }
//                            }
//                        }
//                    }
//
//                        HStack(alignment: .bottom, spacing: 0) {
//                            VStack(alignment: .leading,spacing: 4) {
//                                Text(message(status: contex.state.status))
//                                    .font(.title3)
//                                    .foregroundColor(.white)
//                                Text(subMessage(status:contex.state.status))
//                                    .font(.caption2)
//                                    .foregroundColor(.gray)
//                            }
//                            .frame(maxWidth: .infinity,alignment: .leading)
//
//                            HStack(alignment: .bottom,spacing: 0) {
//                                ForEach(Status.allCases, id: \.self){ type in
//                                    Image(systemName: type.rawValue)
//                                        .font(contex.state.status == type ? .title2 : .body)
//                                        .foregroundColor(contex.state.status == type ? Color("Green") :
//                                                .white.opacity(0.7))
//                                        .frame(width: contex.state.status == type ? 45 : 32, height : contex.state.status == type ? 45 : 32)
//                                        .background {
//                                            Circle()
//                                                .fill(contex.state.status == type ? .white : .green.opacity(0.5))
//                                        }
//                                    //MARK: - Bottom Arrow To Look like Bubble
//                                        .background(alignment: .bottom, content: {
//                                           BottomArrow(status: contex.state.Status,type: type)
////                                            Image(systemName: "arrowtriangle.down.fill")
////                                                .font(.system(size: 15))
////                                                .scaleEffect(x: 1.3)
////                                                .offset(y: 6)
////                                                .opacity(contex.state.Status == type ? 1 : 0)
////                                                .foregroundColor(.white)
//                                        })
//                                        .frame(maxWidth: .infinity)
////
//                                }
//                            }
//                            .padding(.leading, 15)
//                            .padding(.trailing, -10)
//                            .frame(maxWidth:.infinity)
//
//                        }
//                        .frame(maxHeight: .infinity,alignment: .bottom)
//                }
//                    .padding(15)
//
//            }
//        } dynamicIsland: { context in
//            DynamicIsland {
//              DynamicIslandExpandedRegion(.center) {
//                Image(systemName: "circle")
//                  .foregroundColor(.purple)
//              }
//            } compactLeading: {
//              Image(systemName: "circle")
//                .foregroundColor(.blue)
//            } compactTrailing: {
//              Image(systemName: "circle")
//                .foregroundColor(.yellow)
//            } minimal: {
//              Image(systemName: "circle")
//                .foregroundColor(.red)
//            }
//          }
//
//    }
//
//    //MARK: - Spiliting Code
//
//    @ViewBuilder
//    func BottomArrow(status: Status, type: Status) -> some View{
//        Image(systemName: "arrowtriangle.down.fill")
//            .font(.system(size: 15))
//            .scaleEffect(x: 1.3)
//            .offset(y: 6)
//            .opacity(status == type ? 1 : 0)
//            .foregroundColor(.white)
//    }



//
//protocol Widget {
//    // Widget protocol requirements
//}
//
//struct OrderStatus: Widget {
//    var body: some View {
//        WidgetView()
//    }
//}
//
//struct WidgetView: View {
//    var body: some View {
//        ActivityConfiguration(for: OrderAttribute.self) { context in
//            ZStack {
//                RoundedRectangle(cornerRadius: 15, style: .continuous)
//                    .fill(Gradient(colors: [Color.green]))
//
//                VStack {
//                    HStack {
//                        Image("logo")
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .frame(width: 40, height: 40)
//
//                        Text("In Store pickup")
//                            .foregroundColor(Color.white.opacity(0.6))
//                            .frame(maxWidth: .infinity, alignment: .leading)
//
//                        HStack(spacing: -2) {
//                            ForEach(["Burger", "Shake"], id: \.self) { image in
//                                Image(image)
//                                    .resizable()
//                                    .aspectRatio(contentMode: .fit)
//                                    .frame(width: 30, height: 30)
//                                    .background(
//                                        Circle()
//                                            .fill(Color.green)
//                                            .padding(-2)
//                                    )
//                                    .background(
//                                        Circle()
//                                            .stroke(Color.white, lineWidth: 1.5)
//                                            .padding(-2)
//                                    )
//                            }
//                        }
//                    }
//
//                    HStack(alignment: .bottom, spacing: 0) {
//                        VStack(alignment: .leading, spacing: 4) {
//                            Text(message(status: context.state.status))
//                                .font(.title3)
//                                .foregroundColor(.white)
//                            Text(subMessage(status: context.state.status))
//                                .font(.caption2)
//                                .foregroundColor(.gray)
//                        }
//                        .frame(maxWidth: .infinity, alignment: .leading)
//
//                        HStack(alignment: .bottom, spacing: 0) {
//                            ForEach(Status.allCases, id: \.self) { type in
//                                Image(systemName: type.rawValue)
//                                    .font(context.state.status == type ? .title2 : .body)
//                                    .foregroundColor(context.state.status == type ? Color.green : Color.white.opacity(0.7))
//                                    .frame(width: context.state.status == type ? 45 : 32, height: context.state.status == type ? 45 : 32)
//                                    .background(
//                                        Circle()
//                                            .fill(context.state.status == type ? Color.white : Color.green.opacity(0.5))
//                                    )
//                                    .background {
//                                        BottomArrow(status: context.state.status, type: type)
//                                    }
//                                    .frame(maxWidth: .infinity)
//                            }
//                        }
//                        .padding(.leading, 15)
//                        .padding(.trailing, -10)
//                        .frame(maxWidth: .infinity)
//                    }
//                    .frame(maxHeight: .infinity, alignment: .bottom)
//                }
//                .padding(15)
//            }
//        } dynamicIsland: { context in
//            DynamicIsland {
//                DynamicIslandExpandedRegion(.center) {
//                    Image(systemName: "circle")
//                        .foregroundColor(.purple)
//                }
//            } compactLeading: {
//                Image(systemName: "circle")
//                    .foregroundColor(.blue)
//            } compactTrailing: {
//                Image(systemName: "circle")
//                    .foregroundColor(.yellow)
//            } minimal: {
//                Image(systemName: "circle")
//                    .foregroundColor(.red)
//            }
//        }
//    }
//
//    // MARK: - Subview
//
//    @ViewBuilder
//    func BottomArrow(status: Status, type: Status) -> some View {
//        Image(systemName: "arrowtriangle.down.fill")
//            .font(.system(size: 15))
//    }
//
//        //MARK: - Main Title
//        func message(status: Status) -> String {
//            switch status {
//
//            case .received:
//                return "Order received"
//            case .progress:
//                return "Order in progress"
//            case .ready:
//                return "Order ready"
//            }
//        }
//
//        //MARK: - Sub title
//        func subMessage(status: Status) -> String {
//            switch status {
//
//            case .received:
//                return "We just reeived your order."
//            case .progress:
//                return "We are handcrfting your order."
//            case .ready:
//                return "We craft your order"
//            }
//        }
//    }
//}

import SwiftUI

protocol Widget {
    // Widget protocol requirements
}

struct OrderStatus: Widget {
    var body: some View {
        WidgetView()
    }
}

struct WidgetView: View {
    var body: some View {
        ActivityConfiguration(for: OrderAttribute.self) { context in
            ZStack {
                RoundedRectangle(cornerRadius: 15, style: .continuous)
                    .fill(Gradient(colors: [Color.green]))
                
                VStack {
                    HStack {
                        Image("logo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                        
                        Text("In Store pickup")
                            .foregroundColor(Color.white.opacity(0.6))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        HStack(spacing: -2) {
                            ForEach(["Burger", "Shake"], id: \.self) { image in
                                Image(image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30)
                                    .background(
                                        Circle()
                                            .fill(Color.green)
                                            .padding(-2)
                                    )
                                    .background(
                                        Circle()
                                            .stroke(Color.white, lineWidth: 1.5)
                                            .padding(-2)
                                    )
                            }
                        }
                    }
                    
                    HStack(alignment: .bottom, spacing: 0) {
                        VStack(alignment: .leading, spacing: 4) {
                            Text(message(status: context.state.status))
                                .font(.title3)
                                .foregroundColor(.white)
                            Text(subMessage(status: context.state.status))
                                .font(.caption2)
                                .foregroundColor(.gray)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        HStack(alignment: .bottom, spacing: 0) {
                            ForEach(Status.allCases, id: \.self) { type in
                                Image(systemName: type.rawValue)
                                    .font(context.state.status == type ? .title2 : .body)
                                    .foregroundColor(context.state.status == type ? Color.green : Color.white.opacity(0.7))
                                    .frame(width: context.state.status == type ? 45 : 32, height: context.state.status == type ? 45 : 32)
                                    .background(
                                        Circle()
                                            .fill(context.state.status == type ? Color.white : Color.green.opacity(0.5))
                                    )
                                    .background {
                                        BottomArrow(status: context.state.status, type: type)
                                    }
                                    .frame(maxWidth: .infinity)
                            }
                        }
                        .padding(.leading, 15)
                        .padding(.trailing, -10)
                        .frame(maxWidth: .infinity)
                    }
                    .frame(maxHeight: .infinity, alignment: .bottom)
                }
                .padding(15)
            }
        } dynamicIsland: { context in
            DynamicIsland {
                DynamicIslandExpandedRegion(.center) {
                    Image(systemName: "circle")
                        .foregroundColor(.purple)
                }
            } compactLeading: {
                Image(systemName: "circle")
                    .foregroundColor(.blue)
            } compactTrailing: {
                Image(systemName: "circle")
                    .foregroundColor(.yellow)
            } minimal: {
                Image(systemName: "circle")
                    .foregroundColor(.red)
            }
        }
    }
    
    // MARK: - Subview
    
    @ViewBuilder
    func BottomArrow(status: Status, type: Status) -> some View {
        Image(systemName: "arrowtriangle.down.fill")
            .font(.system(size: 15))
            .scaleEffect(x: 1.3)
            .offset(y: 6)
            .opacity(status == type ? 1 : 0)
            .foregroundColor(.white)
    }
    
    // MARK: - Helper Functions
    
    func message(status: Status) -> String {
        switch status {
        case .received:
            return "Order received"
        case .progress:
            return "Order in progress"
        case .ready:
            return "Order ready"
        }
    }
    
    func subMessage(status: Status) -> String {
        switch status {
        case .received:
            return "We just received your order."
        case .progress:
            return "We are handcrafting your order."
        case .ready:
            return "We craft your order."
        }
    }
}

struct OrderAttribute {}

enum Status: String, CaseIterable {
    case received
    case progress
    case ready
}

struct DynamicIsland<Content>: View where Content: View {
    // DynamicIsland implementation
}

struct DynamicIslandExpandedRegion<Content>: View where Content: View {
    // DynamicIslandExpandedRegion implementation
}

// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        OrderStatus()
    }
}

