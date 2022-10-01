//
//  ContentView.swift
//  lecture3
//
//  Created by Wai Shuen Wu on 9/29/22.
//

import SwiftUI

struct ContentView: View {
    @State var num = 0
    func decrementNum() {
        if num == 0 {
            
        } else {
            num -= 1
        }
    }
    
    var body: some View {
        VStack(spacing: 20) {
        Image("dfr7_4Kn_400x400")
           Text(String(num))
                .font(.system(size: 50))
            HStack(spacing: 30) {
                Button("Increment") {
                    num += 1
                }
                
                Button("Decrement") {
                    decrementNum()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
