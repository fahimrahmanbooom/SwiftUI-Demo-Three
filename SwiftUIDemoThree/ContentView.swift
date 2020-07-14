//
//  ContentView.swift
//  SwiftUIDemoThree
//
//  Created by Fahim Rahman on 14/7/20.
//  Copyright © 2020 Fahim Rahman. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isHearted = false
    @State private var numberOfReact = 0
    
    var body: some View {
        
        ZStack {
            
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                
                withAnimation {
                    self.isHearted.toggle()
                    
                    self.isHearted ? (self.numberOfReact += 1) : (self.numberOfReact -= 1)
                }
                
            }) {
                
                VStack {
                    
                    if isHearted {
                        
                        Image("heartFilled").renderingMode(.original)
                            .resizable()
                            .padding(.all, 120)
                            .aspectRatio(contentMode: .fit)
                            .transition(.scale)
                    }
                    else {
                        
                        Image("heart").renderingMode(.original)
                            .resizable()
                            .padding(.all, 120)
                            .aspectRatio(contentMode: .fit)
                            .transition(.scale)
                    }
                    
                    Text(String(numberOfReact))
                        .font(.title)
                        .fontWeight(.light)
                        .foregroundColor(.red)
                        .multilineTextAlignment(.center)
                        .padding()
                }
            }
        }
    }
}



// preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
