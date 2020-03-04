//
//  ContentView.swift
//  Matthew Lonis
//
//  Created by Matthew Lonis on 2/1/20.
//  Copyright © 2020 Matthew Lonis. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    
    var home_view: some View {
        VStack {
            Text("Matthew")
                .font(.title)
        }
    }
    
    var body: some View {
        TabView(selection: $selection){
            home_view
                .tabItem {
                    VStack {
                        Image("first")
                        Text("First")
                    }
            }
            .tag(0)
            Text("Second View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image("second")
                        Text("Second")
                    }
            }
            .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
