//
//  ContentView.swift
//  swiftui-basic
//
//  Created by Sagar Das on 11/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Spacer()
            
            Image("background")
                .background()
            
            VStack{
                Spacer()
                Image("logo")
                    
                Spacer() 
                HStack{
                    Spacer()
                    Image("card2")
                    Spacer()
                    Image("card3")
                    Spacer()
                }
                Spacer()
                
                Image("dealbutton")
                    .padding(.bottom, 100.0)
                
                HStack{
                    Spacer()
                    VStack(spacing: 20.0){
                        Text("Player")
                            .foregroundColor(.white)
                        Text("0")
                            .foregroundColor(.white)
                            .font(.title)
                            
                    }
                    Spacer()
                    VStack(spacing: 20.0){
                        Text("CPU")
                            .foregroundColor(.white)
                        
                            
                        Text("0")
                            .foregroundColor(.white)
                            .font(.title)
                        
                        
                    }
                    Spacer()
                    
                }
                .padding(.bottom, 150.0)
                
            }
        }

        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
