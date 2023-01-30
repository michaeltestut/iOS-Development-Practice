//
//  ContentView.swift
//  DiceeSwiftUI
//
//  Created by Michael Testut on 1/30/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
