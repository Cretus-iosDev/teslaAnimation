//
//  ContentView.swift
//  teslaAnimation
//
//  Created by rutik maraskolhe on 29/07/21.
//

import SwiftUI

struct ContentView: View {
    @State private var propels = true
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.1668799222, green: 0.1766658127, blue: 0.1851916909, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            Image("map")
            
            VStack {
                Image(systemName: "car.fill")
        
                Text("Cars")
                    .font(.caption)
            }.foregroundColor(Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)))
             .offset(x: -120, y: 392)
            
            Image("cybertruck")
                .resizable()
                .scaleEffect(0.2)
                .scaledToFit()
                .rotationEffect(.degrees(-60))
                .offset(x: propels ? 90 : 20, y: propels ? -150 : 40)
                .animation(Animation.easeInOut(duration: 10).repeatCount(10, autoreverses: false))
                .onAppear() {
                    self.propels.toggle()
            }
                
            
        }
        
           
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
